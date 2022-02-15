function result = search_exhaustively(mag_ampls, mag_phases, mmWave_data, pl_dir)

%% mmWave data refactor:
n_points = 0;

mmWave_data_tmp = [];

for i=1:8
    if mmWave_data(1,(i-1)*3+1)==0 && mmWave_data(1,(i-1)*3+2)==0 && mmWave_data(1,(i-1)*3+3)==0
        break;
    end
    
    mmWave_data_tmp = [mmWave_data_tmp;mmWave_data(1,(i-1)*3+1) mmWave_data(1,(i-1)*3+2) mmWave_data(1,(i-1)*3+3)];
end

if length(mmWave_data_tmp(:,1)) < 3
    return;
end

mmWave_data = mmWave_data_tmp;

%% Init
state = "inc_comb";

comb_mask = 0;
stop_mask_val = 2^(length(mmWave_data(:,1)))-1;

stop_it = false;

search_params = struct('n_points', 0, 'phases', [], 'powerline_points', []);
best_params = struct('n_points', 0, 'phases', [], 'powerline_points', []);

search_result = 0;

best_SSE = 999999999;

%% Search

while true
   if state=="inc_comb"
       comb_mask = comb_mask+1;
       
       if (comb_mask>stop_mask_val) || (comb_mask==0)
           stop_it = true;
       else
           state = "check_comb";
       end
   elseif state=="check_comb"
       search_params = points_from_mask(mmWave_data, comb_mask);
       
       if mod(search_params.n_points,2)==0
           state="mask_0";
       elseif mod(search_params.n_points,3)==0
           state="mask_1";
       else
           state="inc_comb";
       end
   elseif state=="mask_0"
       [fully_incremented, search_params] = increment_mask0(search_params);
       
       if fully_incremented
           if mod(search_params.n_points,3)==0
               state="mask_1";
           else
               state="inc_comb";
           end
       else
           [best_params, best_SSE] = evaluate_search_params(search_params, best_params, best_SSE, pl_dir, mag_ampls, mag_phases);
       end
   elseif state=="mask_1"
       [fully_incremented, search_params] = increment_mask1(search_params);
       
        if fully_incremented
           state="inc_comb";
       else
           [best_params, best_SSE] = evaluate_search_params(search_params, best_params, best_SSE, pl_dir, mag_ampls, mag_phases);
       end
   end
   
   if stop_it
       break;
   end
end

result = best_params;

end


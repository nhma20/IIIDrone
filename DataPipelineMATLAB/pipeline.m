%% Import data
data_filename = 'tests20211019/test2.txt';

data = importdata(data_filename);

data = data.data(100:end,:);

%% Params
n_summed_sine_vals = 10;
fs = 1000;
Tp = fs / 50;
T_mmw = round(fs / 30)+1;

lb = 100;
ub = size(data,1);

moving_avg_window = 10;

% mag = 1;

%% Prepare data
timestamps = data(:,1);

mag0 = data(:,2:4);
mag1 = data(:,5:7);
mag2 = data(:,8:10);
mag3 = data(:,11:13);

mmWave0 = data(:,14:16);
mmWave1 = data(:,17:19);
mmWave2 = data(:,20:22);
mmWave3 = data(:,23:25);
mmWave4 = data(:,26:28);
mmWave5 = data(:,29:31);
mmWave6 = data(:,32:34);
mmWave7 = data(:,35:37);

mag0_ampls = [data(:,38) data(:,40) data(:,42)] ./ n_summed_sine_vals;
mag0_phases = [data(:,39) data(:,41) data(:,43)] ./ n_summed_sine_vals;
mag1_ampls = [data(:,44) data(:,46) data(:,48)] ./ n_summed_sine_vals;
mag1_phases = [data(:,45) data(:,47) data(:,49)] ./ n_summed_sine_vals;
mag2_ampls = [data(:,50) data(:,52) data(:,54)] ./ n_summed_sine_vals;
mag2_phases = [data(:,51) data(:,53) data(:,55)] ./ n_summed_sine_vals;
mag3_ampls = [data(:,52) data(:,54) data(:,56)] ./ n_summed_sine_vals;
mag3_phases = [data(:,53) data(:,55) data(:,57)] ./ n_summed_sine_vals;

% %% Plot sample data
% figure;
% 
% subplot(2,2,1);
% plot(timestamps(lb:ub),data(lb:ub,2), 'r');
% hold on;
% plot(timestamps(lb:ub),data(lb:ub,3), 'g');
% plot(timestamps(lb:ub),data(lb:ub,4), 'b');
% hold off;
% 
% title("Magnetometer 0 data");
% legend("x", "y", "z");
% xlabel("Time");
% ylabel("Quantized mag sample");
% 
% subplot(2,2,2);
% plot(timestamps(lb:ub),data(lb:ub,5), 'r');
% hold on;
% plot(timestamps(lb:ub),data(lb:ub,6), 'g');
% plot(timestamps(lb:ub),data(lb:ub,7), 'b');
% hold off;
% 
% title("Magnetometer 1 data");
% legend("x", "y", "z");
% xlabel("Time");
% ylabel("Quantized mag sample");
% 
% subplot(2,2,3);
% plot(timestamps(lb:ub),data(lb:ub,8), 'r');
% hold on;
% plot(timestamps(lb:ub),data(lb:ub,9), 'g');
% plot(timestamps(lb:ub),data(lb:ub,10), 'b');
% hold off;
% 
% title("Magnetometer 2 data");
% legend("x", "y", "z");
% xlabel("Time");
% ylabel("Quantized mag sample");
% 
% subplot(2,2,4);
% plot(timestamps(lb:ub),data(lb:ub,11), 'r');
% hold on;
% plot(timestamps(lb:ub),data(lb:ub,12), 'g');
% plot(timestamps(lb:ub),data(lb:ub,13), 'b');
% hold off;
% 
% title("Magnetometer 3 data");
% legend("x", "y", "z");
% xlabel("Time");
% ylabel("Quantized mag sample");

%% Sinusoidal reconstruction
[comp_ampls, comp_phases, middle_vals, top_indices] = reconstruct_sinusoidals(data(:,2:13), fs);

comp_ampls_avgs = movmean(comp_ampls,moving_avg_window);
comp_phases_avgs = movmean(comp_phases, moving_avg_window);

% %% Sample plot of reconstructed sine parameters
% figure;
% mag_ch = 3;
% 
% period_ts = [];
% 
% % Get periods
% for i=lb:ub
%     if mod(i,Tp)==0
%         period_ts = [period_ts;timestamps(i)];
%     end
% end
% 
% % Plot mag data
% plot(timestamps(lb:ub),data(lb:ub,2+mag_ch), 'r');
% hold on;
% middle_diff = middle_vals(lb:ub,1+mag_ch)-middle_vals(lb:ub,1);
% plot(timestamps(lb:ub),data(lb:ub,2)+middle_diff, 'k--');
% 
% % Add period lines
% xline(period_ts);
% 
% % Add middle value for data
% plot(timestamps(lb:ub), middle_vals(lb:ub,1+mag_ch), 'k--');
% 
% % Add amplitude lines
% ampl_x = [];
% ampl_y = [];
% 
% ampl_x0 = [];
% ampl_y0 = [];
% for i=lb:ub
%     if mod(i, Tp)==0
%         x = timestamps(top_indices(i,1+mag_ch));
%         y1 = middle_vals(i,1+mag_ch);
%         y2 = y1 + comp_ampls(i, 1+mag_ch);
%         ampl_x = [ampl_x x];
%         ampl_y = [ampl_y [y1;y2]];
%         
%         x0 = timestamps(top_indices(i,1));
%         y10 = middle_vals(i,1)+middle_diff(i-lb+1);
%         y20 = y10 + comp_ampls(i, 1);
%         ampl_x0 = [ampl_x0 x0];
%         ampl_y0 = [ampl_y0 [y10;y20]];
%     end
% end
% 
% line([ampl_x;ampl_x], ampl_y, 'color', 'b');
% line([ampl_x0;ampl_x0], ampl_y0, 'color', 'b', 'linestyle', '--');
% 
% % Add phase lines
% phase_x = [ampl_x0;ampl_x];
% phase_y = ones(size(phase_x))*middle_vals(lb,1+mag_ch);
% line(phase_x, phase_y, 'color', 'g');
% 
% % Add legend
% labels = ["MagData" "MagData0" "PeriodDelim"];
% for i=1:length(period_ts)-1
%     labels = [labels ""];
% end
% 
% labels = [labels "MiddleVals" "Amplitudes"];
% for i=1:length(ampl_x(1,:))
%     labels = [labels ""];
% end
% 
% labels = [labels  "Mag0Amplitudes"];
% 
% legend(labels);
% title('Reconstructed sine');
% 
% hold off;

% %% Sample plot of values
% figure;
% 
% xline(comp_ampls(lb:ub,mag*3+1), 'r');
% hold on;
% xline(comp_ampls(lb:ub,mag*3+2), 'g');
% xline(comp_ampls(lb:ub,mag*3+3), 'b');
% hold off;
% empty_labels = [];
% for i=lb:ub-1
%     empty_labels = [empty_labels ""];
% end
% labels = ["x" empty_labels "y" empty_labels "z"];
% 
% legend(labels);
% title("Amplitudes over range");
% 
% 
% figure;
% xline(comp_phases(lb:ub,mag*3+1), 'r');
% hold on;
% xline(comp_phases(lb:ub,mag*3+2), 'g');
% xline(comp_phases(lb:ub,mag*3+3), 'b');
% hold off;
% empty_labels = [];
% for i=lb:ub-1
%     empty_labels = [empty_labels ""];
% end
% labels = ["x" empty_labels "y" empty_labels "z"];
% 
% legend(labels);
% title("Phases over range");

%% mmWave data preparation
mmWave_indices = [];
for i=0:ub-lb
   if mod(i, T_mmw)==0
       mmWave_indices = [mmWave_indices i+lb];
   end
end

mmWave_data = data(mmWave_indices, 14:37);



%% Powerline direction computation
pl_dirs = compute_powerline_dirs(mmWave_data);

% %% Plot some points
% idx = 11;
% 
% mmWave_X = [];
% mmWave_Y = [];
% mmWave_Z = [];
% 
% for i=1:8
%     if mmWave_data(idx, (i-1)*3+1)==0 && mmWave_data(idx, (i-1)*3+2)==0 && mmWave_data(idx, (i-1)*3+3)==0
%         break;
%     end
%     
%     mmWave_X = [mmWave_X mmWave_data(idx, (i-1)*3+1)];
%     mmWave_Y = [mmWave_Y mmWave_data(idx, (i-1)*3+2)];
%     mmWave_Z = [mmWave_Z mmWave_data(idx, (i-1)*3+3)];
% end
% 
% figure;
% scatter3(mmWave_X, mmWave_Y, mmWave_Z);
% hold on;
% 
% pl_dir = pl_dirs(idx,:);
% 
% plot3([mean(mmWave_X) mean(mmWave_X)+pl_dir(1)], [mean(mmWave_Y) mean(mmWave_Y)+pl_dir(2)], [mean(mmWave_Z) mean(mmWave_Z)+pl_dir(3)]);
% 
% for i=1:length(mmWave_X)
%     for j=i+1:length(mmWave_X)
%         plot3([mmWave_X(i) mmWave_X(j)], [mmWave_Y(i) mmWave_Y(j)], [mmWave_Z(i) mmWave_Z(j)]);
%     end
% end
% 
% set(gca,'DataAspectRatio',[1 1 1])
% 
% hold off;
% 
% title("mmWave points and estimated powerline direction");

%% Exhaustive search
for i=4:length(mmWave_indices)
    mmWave_idx = mmWave_indices(i);
    result = search_exhaustively( comp_ampls_avgs(mmWave_idx,:), comp_phases_avgs(mmWave_idx,:), mmWave_data(i,:), pl_dirs(i,:));
end

%% Test expected mag computations

% search_params = struct(
% 
% expected_mag = compute_expected_mag(

%% Visualisation


%%













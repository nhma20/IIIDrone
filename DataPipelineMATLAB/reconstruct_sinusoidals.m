function [ampls, phases, middle_vals, top_indices] = reconstruct_sinusoidals(mag_data, fs)

Tp = fs / 50;

min_vals = 999999999 * ones(12,1);
max_vals = -min_vals;
max_vals_n = zeros(size(max_vals));

ampl_window = zeros(10,12);
phase_window = zeros(10,12);
middle_vals_window = zeros(10,12); % Just for visualization

ampls = zeros(size(mag_data));
phases = zeros(size(mag_data));
middle_vals = zeros(size(mag_data)); % Just for visualization
top_indices = zeros(size(mag_data)); % For visualization

top_indices_temp = zeros(12,1);

for i=1:length(mag_data(:,1))
    for j=1:12
        if mag_data(i,j) < min_vals(j)
            min_vals(j) = mag_data(i,j);
        elseif mag_data(i,j) > max_vals(j)
            max_vals(j) = mag_data(i,j);
            max_vals_n(j) = i;
        end
            
        if mod(i,Tp)==0
            ampl = (max_vals(j)-min_vals(j))/2;
            ampl_window(:,j) = [ampl;ampl_window(1:9,j)];
            
%             if max_vals_n(j) < max_vals_n(1)
% %                 phase = ((mod(max_vals_n(j),Tp)+Tp)-mod(max_vals_n(1),Tp)) * (2*pi/Tp);
%                 phase = ((max_vals_n(j)+Tp)-max_vals_n(1)) * (2*pi/Tp);
%                 phase_window(:,j) = [phase;phase_window(1:9,j)];
%             else
% %                 phase = (mod(max_vals_n(j),Tp)-mod(max_vals_n(1),Tp)) * (2*pi/Tp);
%                 phase = (max_vals_n(j)-max_vals_n(1)) * (2*pi/Tp);
%                 phase_window(:,j) = [phase;phase_window(1:9,j)];
%             end
            phase = (max_vals_n(j)-max_vals_n(1)) * (2*pi/Tp);
            phase_window(:,j) = [phase;phase_window(1:9,j)];
            
            middle_val = (max_vals(j)+min_vals(j))/2;
            middle_vals_window(:,j) = [middle_val;middle_vals_window(1:9,j)];
            
            top_indices_temp(j) = max_vals_n(j);
        end
    end
    
    if mod(i,Tp)==0
        min_vals = 999999999 * ones(12,1);
        max_vals = -min_vals;
        max_vals_n = zeros(size(max_vals));
    end
    
    ampls(i,:) = sum(ampl_window, 1)/10;
    phases(i,:) = sum(phase_window, 1)/10;
    middle_vals(i,:) = sum(middle_vals_window,1)/10;
    top_indices(i,:) = top_indices_temp(:)';
end

end


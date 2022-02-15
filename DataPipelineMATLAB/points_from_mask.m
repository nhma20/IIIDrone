function search_params = points_from_mask(mmWave_data, comb_mask)

pl_points = [];

for i=1:length(mmWave_data(:,1))
    single_bit = bitsll(1,i-1);
    
    if bitand(single_bit, comb_mask)
        pl_points = [pl_points;mmWave_data(i,:)];
    end
end

n_points = length(pl_points(:,1));

search_params = struct('n_points', n_points, 'powerline_points', pl_points, 'phases', zeros(n_points,1));

end


function [fully_incremented, search_params] = increment_mask0(search_params)

fully_incremented = false;

for i=1:search_params.n_points
    if search_params.phases(i)==0
        search_params.phases(i) = pi;
        break;
    else
        search_params.phases(i) = 0;
    end
    
    if i==search_params.n_points
        fully_incremented = true;
    end
end

end


function [fully_incremented, search_params] = increment_mask1(search_params)

fully_incremented = false;

for i=1:search_params.n_points
    if search_params.phases(i) == 0
        search_params.phases(i) = 2*pi/3;
        break;
    elseif search_params.phases(i) == 2*pi/3
        search_params.phases(i) = 4*pi/3;
        break;
    else
        search_param.phases(i) = 0;
    end
    
    if i==search_params.n_points
        fully_incremented = true;
    end
end

end


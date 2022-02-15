function powerline_dirs = compute_powerline_dirs(mmWave_data)

powerline_dirs = [];

for i=1:length(mmWave_data(:,1))
    points = [];

    for j=1:8
        if mmWave_data(i, (j-1)*3+1)==0 && mmWave_data(i, (j-1)*3+2)==0 && mmWave_data(i, (j-1)*3+3)==0
            break;
        end

        points = [points;[mmWave_data(i, (j-1)*3+1) mmWave_data(i, (j-1)*3+2) mmWave_data(i, (j-1)*3+3)]];
    end

    n_points = length(points(:,1));
    
    n_vectors = factorial(n_points) / (factorial(2)*factorial(n_points-2));
    
    vectors = [];
    
    for j=1:n_points
        for k=j+1:n_points
            vector = [points(j,1)-points(k,1) points(j,2)-points(k,2) points(j,3)-points(k,3)];
            vectors = [vectors;vector];
        end
    end
    
    n_cross_vectors = factorial(n_vectors)/(factorial(2)*factorial(n_vectors-2));
    cross_vectors = [];
    
    for j=1:n_vectors
        for k=j+1:n_vectors
            vec1 = vectors(j,:);
            vec2 = vectors(k,:);
            
            cross_vector = [vec1(2)*vec2(3)-vec1(3)*vec2(2) vec1(3)*vec2(1)-vec1(1)*vec2(3) vec1(1)*vec2(2)-vec1(2)*vec2(1)];
            cross_vector = cross_vector / norm(cross_vector);
            
            if length(cross_vectors) > 0
                dot_prod = cross_vector(1)*cross_vectors(1,1) + cross_vector(2)*cross_vectors(1,2) + cross_vector(3)*cross_vectors(1,3);
                
                if dot_prod < 0
                    cross_vector = -cross_vector;
                end
            end
            
            cross_vectors = [cross_vectors;cross_vector];
        end
    end
    
    mean_vec = mean(cross_vectors, 1);
    
    powerline_dirs = [powerline_dirs;mean_vec];
end

end


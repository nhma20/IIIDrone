function [a, b] = compute_a_b(pl_points, pl_dir, phases)

a = zeros(3,1);
b = zeros(3,1);

n_points = length(pl_points(:,1));

for i=1:n_points
    v_i = compute_v_i(pl_points(i,:), pl_dir);
    
    theta_i = phases(i);
    
    sin_theta_i = sin(theta_i);
    cos_theta_i = cos(theta_i);
    
    a(1) = a(1) + v_i(1)*sin_theta_i;
    a(2) = a(2) + v_i(2)*sin_theta_i;
    a(3) = a(3) + v_i(3)*sin_theta_i;
    
    b(1) = b(1) + v_i(1)*cos_theta_i;
    b(2) = b(2) + v_i(2)*cos_theta_i;
    b(3) = b(3) + v_i(3)*cos_theta_i;
end

end


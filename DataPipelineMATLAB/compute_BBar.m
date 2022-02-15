function [v_bar, theta_bar] = compute_BBar(search_params, mag_T_mmw, pl_dir)

pl_dir_mag = mag_T_mmw * [pl_dir';1];

pl_dir_mag = pl_dir_mag(1:3);

pl_points_mag = search_params.powerline_points;

for i=1:search_params.n_points
    pl_point = mag_T_mmw * [pl_points_mag(i,:)';1];
        
    pl_points_mag(i,:) = pl_point(1:3);
end

[a, b] = compute_a_b(pl_points_mag, pl_dir_mag, search_params.phases);

v_bar_x = sqrt(a(1)^2 + b(1)^2);
theta_bar_x = -atan(b(1)/a(1)) + pi/2;

v_bar_y = sqrt(a(2)^2 + b(2)^2);
theta_bar_y = -atan(b(2)/a(2)) + pi/2;

v_bar_z = sqrt(a(3)^2 + b(3)^2);
theta_bar_z = -atan(b(3)/a(3)) + pi/2;

v_bar = [v_bar_x v_bar_y v_bar_z];
v_bar = v_bar / norm(v_bar);

theta_bar = [theta_bar_x theta_bar_y theta_bar_z];

for i=1:3
    if theta_bar(i) > pi
        theta_bar(i) = theta_bar(i) - 2*pi;
    elseif theta_bar(i) < -pi
        theta_bar(i) = theta_bar(i) + 2*pi;
    end
end

end


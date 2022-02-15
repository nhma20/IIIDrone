function [expected_mag_ampls, expected_mag_phases] = compute_expected_mag(search_params, pl_dir)

expected_mag_ampls = zeros(4,3);
expected_mag_phases = zeros(4,3);

mag0_T_mmw = get_mag_mmw_transform(0);
mag1_T_mmw = get_mag_mmw_transform(1);
mag2_T_mmw = get_mag_mmw_transform(2);
mag3_T_mmw = get_mag_mmw_transform(3);

[expected_mag_ampls(1,:), expected_mag_phases(1,:)] = compute_BBar(search_params, mag0_T_mmw, pl_dir);
[expected_mag_ampls(2,:), expected_mag_phases(2,:)] = compute_BBar(search_params, mag1_T_mmw, pl_dir);
[expected_mag_ampls(3,:), expected_mag_phases(3,:)] = compute_BBar(search_params, mag2_T_mmw, pl_dir);
[expected_mag_ampls(4,:), expected_mag_phases(4,:)] = compute_BBar(search_params, mag3_T_mmw, pl_dir);

end


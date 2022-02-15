function [best_params, best_SSE] = evaluate_search_params(search_params, best_params, best_SSE, pl_dir, mag_ampls, mag_phases)

[expected_mag_ampls, expected_mag_phases] = compute_expected_mag(search_params, pl_dir);
SSE = compute_SSE(mag_ampls, mag_phases, expected_mag_ampls, expected_mag_phases);

if SSE < best_SSE
    best_SSE = SSE;
    best_params = search_params;
end

end
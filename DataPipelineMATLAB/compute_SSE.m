function SSE = compute_SSE(mag_ampls, mag_phases, expected_mag_ampls, expected_mag_phases)

%% Align expected phases
ch0_phase_diff = 0 - expected_mag_phases(1,1);
expected_mag_phases = expected_mag_phases + ch0_phase_diff;

for i=1:4
    for j=1:3
        if expected_mag_phases(i,j) > pi
            expected_mag_phases(i,j) = expected_mag_phases(i,j) - 2*pi;
        elseif expected_mag_phases(i,j) < -pi
            expected_mag_phases(i,j) = expected_mag_phases(i,j) + 2*pi;
        end
    end
end

%% Compute SSE
SSE = 0;

for i=1:4
    mag_ampls_norm = mag_ampls((i-1)*3+1:(i-1)*3+3);
    mag_ampl_magnitude = norm(mag_ampls((i-1)*3+1:(i-1)*3+3));
    if mag_ampl_magnitude ~= 0
        mag_ampls_norm = mag_ampls_norm / mag_ampl_magnitude;
    end
    
    mag_phases_norm = mag_phases((i-1)*3+1:(i-1)*3+3);
    mag_phases_magnitude = norm(mag_phases((i-1)*3+1:(i-1)*3+3));
    if mag_phases_magnitude ~= 0
        mag_phases_norm = mag_phases_norm / mag_phases_magnitude;
    end
    
    expected_mag_phases_norm = expected_mag_phases(i,:);
    expected_mag_phases_magnitude = norm(expected_mag_phases(i,:));
    if expected_mag_phases_magnitude ~= 0
        expected_mag_phases_norm = expected_mag_phases_norm / expected_mag_phases_magnitude;
    end
    
    err = mag_ampls_norm-expected_mag_ampls(i,1);
    SSE = SSE + sqrt(sum(err.^2));
    
    err = mag_ampls_norm-expected_mag_ampls(i,2);
    SSE = SSE + sqrt(sum(err.^2));
    
    err = mag_ampls_norm-expected_mag_ampls(i,3);
    SSE = SSE + sqrt(sum(err.^2));
    
    err = mag_phases_norm-expected_mag_phases_norm;
    SSE = SSE + sqrt(sum(err.^2));
    
    err = mag_phases_norm-expected_mag_phases_norm;
    SSE = SSE + sqrt(sum(err.^2));
    
    err = mag_phases_norm-expected_mag_phases_norm;
    SSE = SSE + sqrt(sum(err.^2));
end

end


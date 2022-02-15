function mag_T_mmw = get_mag_mmw_transform(mag)

mag_T_mmw = zeros(4,4);

if mag==0
    mag_T_mmw = [1 0 0 24.5;
                0 1 0 2.5;
                0 0 1 7.5;
                0 0 0 1];
elseif mag==1
    mag_T_mmw = [1 0 0 25.5;
                0 1 0 2.5;
                0 0 1 7.5;
                0 0 0 1];
elseif mag==2
    mag_T_mmw = [1 0 0 24;
                0 1 0 1.5;
                0 0 1 7.5;
                0 0 0 1];
elseif mag==3
    mag_T_mmw = [1 0 0 26.5;
                0 1 0 1.5;
                0 0 1 7.5;
                0 0 0 1];
end

end


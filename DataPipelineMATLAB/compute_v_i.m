function v_i = compute_v_i(pl_point, pl_dir)
dir = [ pl_dir(2)*pl_point(3)-pl_dir(3)*pl_point(2);
        pl_dir(3)*pl_point(1)-pl_dir(1)*pl_point(3);
        pl_dir(1)*pl_point(2)-pl_dir(2)*pl_point(1) ];
    
dir = dir / norm(dir);

d_i = norm(pl_point);

v_i = dir / d_i;

end


function tdh = transformationmatrixdh(alphax, ax, dz, thetaz)
    tdh = [ cos(thetaz) -(sin(thetaz) * round(cos(alphax))) (sin(thetaz) * sin(alphax)) (ax * cos(thetaz));
            sin(thetaz) (cos(thetaz) * round(cos(alphax))) -(cos(thetaz) * sin(alphax)) (ax * sin(thetaz));
            0 sin(alphax) round(cos(alphax)) dz;
            0 0 0 1];
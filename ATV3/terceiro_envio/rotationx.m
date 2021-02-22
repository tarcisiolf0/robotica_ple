function x = rotationx(gama)
x = [1 0 0 0;
     0 cos(gama) -sin(gama) 0;
     0 sin(gama) cos(gama) 0;
     0 0 0 1];
end
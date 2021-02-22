function r = quaterniontorotationmatrix(a)
% a = [w +x^i +yj^ +zk^]
w = a(1);
x = a(2);
y = a(3);
z = a(4);
    r = [(1-2*(y^2+z^2)) ((2*x*y)-(2*z*w)) ((2*x*z)+(2*y*w));
         ((2*x*y)+(2*z*w)) (1-2*(x^2+z^2)) ((2*y*z)-(2*x*w));
         ((2*x*z)-(2*y*w)) ((2*y*z)+(2*x*w)) (1-2*(x^2+y^2))];
end
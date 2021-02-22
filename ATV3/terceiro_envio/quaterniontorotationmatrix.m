function r = quaterniontorotationmatrix(a)
% a = [w +x^i +yj^ +zk^]
x = a(1);
y = a(2);
z = a(3);
w = a(4);
    r = [(1-2*(y^2+z^2)) ((2*x*y)-(2*z*w)) ((2*x*z)+(2*y*w));
         ((2*x*y)+(2*z*w)) (1-2*(x^2+z^2)) ((2*y*z)-(2*x*w));
         ((2*x*z)-(2*y*w)) ((2*y*z)+(2*x*w)) (1-2*(x^2+y^2))];
end
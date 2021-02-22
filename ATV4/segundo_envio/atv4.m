clear;
close all;
clc;
%%
syms theta1 theta2 theta3 theta4 theta5 theta6
% Joint1 = 0, Joint2 = -0.40, Joint3 = -0.30
% Joint4 = 0, Joint5 = 0, Joint6 = 0

%% Atividade 3
dh = [  0 0 0.155 theta1;
        theta2 0 0.125 0;
        theta3 0 0.21 0;
        0 -0.075 0 theta4;
        theta5 0 0.21 0;
        0 0 0.07 theta6];

T_b_1 = translationz(dh(1,3))*rotationz(dh(1,4));
T_1_2 = translationz(dh(2,3))*rotationy(-dh(2,1));
T_2_3 = translationz(dh(3,3))*rotationy(-dh(3,1));
T_3_4 = translationx(dh(4,2))*rotationz(dh(4,4));
T_4_5 = translationz(dh(5,3))*rotationy(-dh(5,1));
T_5_6 = translationz(dh(6,3))*rotationz(dh(6,4));

% Criando as matrizes de transformacao homogenea
T_b_2 = T_b_1*T_1_2;
T_b_3 = T_b_1*T_1_2*T_2_3;
T_b_4 = T_b_1*T_1_2*T_2_3*T_3_4;
T_b_5 = T_b_1*T_1_2*T_2_3*T_3_4*T_4_5;
T_b_6 = T_b_1*T_1_2*T_2_3*T_3_4*T_4_5*T_5_6;

% Criando os vetores de eixo de cada junta
z0 = [0;0;1];
z1 = T_b_1(1:3, 3);
z2 = T_b_2(1:3, 3);
z3 = T_b_3(1:3, 3);
z4 = T_b_4(1:3, 3);
z5 = T_b_5(1:3, 3); 

% Criando os vetores de posicao das juntas em relacao a base
p0 = [0;0;0];
p1 = T_b_1(1:3, 4);
p2 = T_b_2(1:3, 4);
p3 = T_b_3(1:3, 4);
p4 = T_b_4(1:3, 4);
p5 = T_b_5(1:3, 4);
P = T_b_6(1:3, 4);

% Calculo da matriz Jacobiana
J = simplify([cross(z0, P-p0), cross(z1, P-p1), cross(z2, P-p2), cross(z3, P-p3), cross(z4, P-p4), cross(z5, P-p5);
 z0, z1, z2, z3, z4, z5,]);

J = double(subs(J, {theta1, theta2, theta3, theta4, theta5, theta6}, {0, -0.40, -0.30, 0, 0, 0}));

'Matriz Jacobiana'
J


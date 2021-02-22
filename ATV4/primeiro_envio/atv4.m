clc
close all
clear
%%
syms theta1 theta2 theta3 theta4 theta5 theta6
% transforms: 
%   - 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1607975429
%         nsecs: 501818924
%       frame_id: "world"
%     child_frame_id: "map"
%     transform: 
%       translation: 
%         x: 0.0
%         y: 0.0
%         z: 0.0
%       rotation: 
%         x: 0.0
%         y: 0.0
%         z: 0.0
%         w: 1.0
% ---
% 
q0 = [0 0 0 1];
world_R_map = quaterniontorotationmatrix(q0);
world_P_map = [0 0 0];
world_T_map = transformationmatrix(world_R_map, world_P_map);
% 
% """
% transforms: 
%   - 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1607975429
%         nsecs: 422797874
%       frame_id: "map"
%     child_frame_id: "tf1"
%     transform: 
%       translation: 
%         x: 0.0
%         y: 0.0
%         z: 0.0
%       rotation: 
%         x: 0.0
%         y: 0.0
%         z: 0.0
%         w: 1.0
% ---
% """
q1 = [0 0 0 1];
map_R_tf1 = quaterniontorotationmatrix(q1);
map_P_tf1 = [0 0 0];
map_T_tf1 = transformationmatrix(map_R_tf1, map_P_tf1);
% 
% """
% transforms: 
%   - 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1607975429
%         nsecs: 472798406
%       frame_id: "map"
%     child_frame_id: "tf1"
%     transform: 
%       translation: 
%         x: 0.0
%         y: 0.0
%         z: 0.0
%       rotation: 
%         x: 0.0
%         y: 0.0
%         z: 0.0
%         w: 1.0
% ---
% """
% 
% """
% transforms: 
%   - 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1607975429
%         nsecs: 474611043
%       frame_id: "base_link"
%     child_frame_id: "link1"
%     transform: 
%       translation: 
%         x: 0.0
%         y: 0.0
%         z: 0.155
%       rotation: 
%         x: 0.0
%         y: 0.0
%         z: 0.0
%         w: 1.0
%   - 
% """
q2 =[0 0 0 1];
base_link_R_link1 = quaterniontorotationmatrix(q2);
base_link_P_link1 = [0 0 0.155];
base_link_T_link1 = transformationmatrix(base_link_R_link1, base_link_P_link1);
% """
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1607975429
%         nsecs: 474611043
%       frame_id: "link1"
%     child_frame_id: "link2"
%     transform: 
%       translation: 
%         x: 0.0
%         y: 0.0
%         z: 0.125
%       rotation: 
%         x: 0.0
%         y: 0.0
%         z: 0.0
%         w: 1.0
%   - 
% """
q3 =[0 0 0 1];
link1_R_link2 = quaterniontorotationmatrix(q3);
link1_P_link2 = [0 0 0.125];
link1_T_link2 = transformationmatrix(link1_R_link2, link1_P_link2);
% """
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1607975429
%         nsecs: 474611043
%       frame_id: "link2"
%     child_frame_id: "link3"
%     transform: 
%       translation: 
%         x: 0.0
%         y: 0.0
%         z: 0.21
%       rotation: 
%         x: 0.0
%         y: 0.0
%         z: 0.0
%         w: 1.0
%   - 
%   """
q4 =[0 0 0 1];
link2_R_link3 = quaterniontorotationmatrix(q4);
link2_P_link3 = [0 0 0.21];
link2_T_link3 = transformationmatrix(link2_R_link3, link2_P_link3);
% """
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1607975429
%         nsecs: 474611043
%       frame_id: "link3"
%     child_frame_id: "link4"
%     transform: 
%       translation: 
%         x: -0.075
%         y: 0.0
%         z: 0.0
%       rotation: 
%         x: 0.0
%         y: 0.0
%         z: 0.0
%         w: 1.0
%   - 
% """
q5 =[0 0 0 1];
link3_R_link4 = quaterniontorotationmatrix(q5);
link3_P_link4 = [-0.075 0 0];
link3_T_link4 = transformationmatrix(link3_R_link4, link3_P_link4);
% """
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1607975429
%         nsecs: 474611043
%       frame_id: "link4"
%     child_frame_id: "link5"
%     transform: 
%       translation: 
%         x: 0.0
%         y: 0.0
%         z: 0.21
%       rotation: 
%         x: 0.0
%         y: 0.0
%         z: 0.0
%         w: 1.0
%   - 
% """
q6 =[0 0 0 1];
link4_R_link5 = quaterniontorotationmatrix(q6);
link4_P_link5 = [0 0 0.21];
link4_T_link5 = transformationmatrix(link4_R_link5, link4_P_link5);
% """
% 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1607975429
%         nsecs: 474611043
%       frame_id: "link5"
%     child_frame_id: "link6"
%     transform: 
%       translation: 
%         x: 0.0
%         y: 0.0
%         z: 0.07
%       rotation: 
%         x: 0.0
%         y: 0.0
%         z: 0.0
%         w: 1.0
% """

q7 =[0 0 0 1];
link5_R_link6 = quaterniontorotationmatrix(q7);
link5_P_link6 = [0 0 0.07];
link5_T_link6 = transformationmatrix(link5_R_link6, link5_P_link6);

% """
% BL-L2
% - Translation: [0.000, 0.000, 0.280]
% - Rotation: in Quaternion [0.000, 0.000, 0.000, 1.000]
%             in RPY (radian) [0.000, -0.000, 0.000]
%             in RPY (degree) [0.000, -0.000, 0.000]
% """
q8 = [0 0 0 1];
base_link_R_link2 = quaterniontorotationmatrix(q8);
base_link_P_link2 = [0, 0, 0.280];
base_link_T_link2 = transformationmatrix(base_link_R_link2, base_link_P_link2);
base_link_T_link2_comp = (base_link_T_link1 * link1_T_link2);
% """
% B-L3
% - Translation: [0.000, 0.000, 0.490]
% - Rotation: in Quaternion [0.000, 0.000, 0.000, 1.000]
%             in RPY (radian) [0.000, -0.000, 0.000]
%             in RPY (degree) [0.000, -0.000, 0.000]
% """
q9 = [0 0 0 1];
base_link_R_link3 = quaterniontorotationmatrix(q9);
base_link_P_link3 = [0 0 0.490];
base_link_T_link3 = transformationmatrix(base_link_R_link3, base_link_P_link3);
base_link_T_link3_comp = ((base_link_T_link1 * link1_T_link2) * link2_T_link3);
% """
% B-L4
% - Translation: [-0.075, 0.000, 0.490]
% - Rotation: in Quaternion [0.000, 0.000, 0.000, 1.000]
%             in RPY (radian) [0.000, -0.000, 0.000]
%             in RPY (degree) [0.000, -0.000, 0.000]
% """
q10 = [0 0 0 1];
base_link_R_link4 = quaterniontorotationmatrix(q10);
base_link_P_link4 = [-0.075 0 0.490];
base_link_T_link4 = transformationmatrix(base_link_R_link4, base_link_P_link4);
base_link_T_link4_comp = (((base_link_T_link1 * link1_T_link2) * link2_T_link3) * link3_T_link4);
% """
% B-L5
% - Translation: [-0.075, 0.000, 0.700]
% - Rotation: in Quaternion [0.000, 0.000, 0.000, 1.000]
%             in RPY (radian) [0.000, -0.000, 0.000]
%             in RPY (degree) [0.000, -0.000, 0.000]
% 
% """
q11 = [0 0 0 1];
base_link_R_link5 = quaterniontorotationmatrix(q11);
base_link_P_link5 = [-0.075 0 0.700];
base_link_T_link5 = transformationmatrix(base_link_R_link5, base_link_P_link5);
base_link_T_link5_comp = ((((base_link_T_link1 * link1_T_link2) * link2_T_link3) * link3_T_link4) * link4_T_link5);
% """
% B-L6
% - Translation: [-0.075, 0.000, 0.770]
% - Rotation: in Quaternion [0.000, 0.000, 0.000, 1.000]
%             in RPY (radian) [0.000, -0.000, 0.000]
%             in RPY (degree) [0.000, -0.000, 0.000]
% 
% """
q12 = [0 0 0 1];
base_link_R_link6 = quaterniontorotationmatrix(q12);
base_link_P_link6 = [-0.075 0 0.770];
base_link_T_link6 = transformationmatrix(base_link_R_link6, base_link_P_link6);
base_link_T_link6_comp = (((((base_link_T_link1 * link1_T_link2) * link2_T_link3) * link3_T_link4) * link4_T_link5) * link5_T_link6);


dh = [  0 0 0.155 theta1;
        0 0 0.125 theta2;
        0 0 0.210 theta3;
        0 -0.075 0 theta4;
        0 0 0.210 theta5;
        0 0 0.070 theta6];

% Inserindo os parametros dh para obter as matrizes de transformação homogenea
base_link_T_link1_dh = transformationmatrixdh(0, 0, 0.155, theta1);
link1_T_link2_dh = transformationmatrixdh(0, 0, 0.125, theta2);
link2_T_link3_dh = transformationmatrixdh(0, 0, 0.210, theta3);
link3_T_link4_dh = transformationmatrixdh(0, -0.075, 0, theta4);
link4_T_link5_dh = transformationmatrixdh(0, 0, 0.210, theta5);
link5_T_link6_dh = transformationmatrixdh(0, 0, 0.070, theta6);

% Criando as matrizes de transformação homogênea dos elos em relação a base
base_link_T_link2_dh = base_link_T_link1_dh * link1_T_link2_dh;
base_link_T_link3_dh = base_link_T_link1_dh * link1_T_link2_dh * link2_T_link3_dh;
base_link_T_link4_dh = base_link_T_link1_dh * link1_T_link2_dh * link2_T_link3_dh * link3_T_link4_dh;
base_link_T_link5_dh = base_link_T_link1_dh * link1_T_link2_dh * link2_T_link3_dh * link3_T_link4_dh * link4_T_link5_dh;
base_link_T_link6_dh = base_link_T_link1_dh * link1_T_link2_dh * link2_T_link3_dh * link3_T_link4_dh * link4_T_link5_dh * link5_T_link6_dh;

% Criando os vetores de eixo de cada junta
z0 = [0;0;1];
z1 = base_link_T_link1_dh(1:3, 3);
z2 = base_link_T_link2_dh(1:3, 3);
z3 = base_link_T_link3_dh(1:3, 3);
z4 = base_link_T_link4_dh(1:3, 3);
z5 = base_link_T_link5_dh(1:3, 3); 

% Criando os vetores de posicao das juntas em relacao a base
p0 = [0;0;0];
p1 = base_link_T_link1_dh(1:3, 4);
p2 = base_link_T_link2_dh(1:3, 4);
p3 = base_link_T_link3_dh(1:3, 4);
p4 = base_link_T_link4_dh(1:3, 4);
p5 = base_link_T_link5_dh(1:3, 4);
P = base_link_T_link6_dh(1:3, 4);

% Calculo da matriz Jacobiana
J = simplify([cross(z0, P-p0), cross(z1, P-p1), cross(z2, P-p2), cross(z3, P-p3), cross(z4, P-p4), cross(z5, P-p5);
  z0, z1, z2, z3, z4, z5,]);

J = double(subs(J, {theta1, theta2, theta3, theta4, theta5, theta6}, {1, 1, 1, 1, 1, 1}));

'Matriz Jacobiana'
J


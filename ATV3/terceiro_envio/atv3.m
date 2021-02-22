clear;
close all;
clc;
%%
syms theta1 theta2 theta3 theta4 theta5 theta6
% Joint1 = 0, Joint2= -0.40, Joint3 = -0.30
% Joint4 = 0, Joint5 = 0, Joint6= 0
Joint6 = 0;
% transforms: 
%   - 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1610414140
%         nsecs: 579371929
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

quaternion2 = [0 0 0 1];
base_link_R_link1 = quaterniontorotationmatrix(quaternion2);
base_link_P_link1 = [0 0 0.155];
base_link_T_link1 = transformationmatrix(base_link_R_link1, base_link_P_link1);
%   - 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1610414140
%         nsecs: 579371929
%       frame_id: "link1"
%     child_frame_id: "link2"
%     transform: 
%       translation: 
%         x: 0.0
%         y: 0.0
%         z: 0.125
%       rotation: 
%         x: 0.0
%         y: 0.196836041018
%         z: 0.0
%         w: 0.98043641964
%   - 
quaternion3 = [0 0.196836041018 0 0.98043641964];
link1_R_link2 = quaterniontorotationmatrix(quaternion3);
link1_P_link2 = [0 0 0.125];
link1_T_link2 = transformationmatrix(link1_R_link2, link1_P_link2);
% - 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1610414140
%         nsecs: 579371929
%       frame_id: "link2"
%     child_frame_id: "link3"
%     transform: 
%       translation: 
%         x: 0.0
%         y: 0.0
%         z: 0.21
%       rotation: 
%         x: 0.0
%         y: 0.150501666899
%         z: 0.0
%         w: 0.988609755293
%   - 
quaternion4 = [0 0.150501666899 0 0.988609755293];
link2_R_link3 = quaterniontorotationmatrix(quaternion4);
link2_P_link3 = [0 0 0.21];
link2_T_link3 = transformationmatrix(link2_R_link3, link2_P_link3);
%  - 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1610414140
%         nsecs: 579371929
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
quaternion5 = [0 0 0 1];
link3_R_link4 = quaterniontorotationmatrix(quaternion5);
link3_P_link4 = [-0.075 0 0];
link3_T_link4 = transformationmatrix(link3_R_link4, link3_P_link4);
% - 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1610414140
%         nsecs: 579371929
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
quaternion6 = [0 0 0 1];
link4_R_link5 = quaterniontorotationmatrix(quaternion6);
link4_P_link5 = [0 0 0.21];
link4_T_link5 = transformationmatrix(link4_R_link5, link4_P_link5);
%   - 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1610414140
%         nsecs: 579371929
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
% ---
quaternion7 = [0 0 0 1];
link5_R_link6 = quaterniontorotationmatrix(quaternion7);
link5_P_link6 = [0 0 0.07];
link5_T_link6 = transformationmatrix(link5_R_link6, link5_P_link6);

%% Matriz de Transformacao Homogenea dos links em relacao a base
% B-L1
% At time 1610413372.179
% - Translation: [0.000, 0.000, 0.155]
% - Rotation: in Quaternion [0.000, 0.000, 0.000, 1.000]
%             in RPY (radian) [0.000, -0.000, 0.000]
%             in RPY (degree) [0.000, -0.000, 0.000]

% B-L2
% At time 1610413375.479
% - Translation: [0.000, 0.000, 0.280]
% - Rotation: in Quaternion [0.000, 0.197, 0.000, 0.980]
%             in RPY (radian) [0.000, 0.396, 0.000]
%             in RPY (degree) [0.000, 22.704, 0.000]
quaternion9 = [0.000 0.197 0.000 0.980];
base_link_R_link2 = quaterniontorotationmatrix(quaternion9);
base_link_P_link2 = [0 0 0.280];
%Matriz de transformacao homogena
base_link_T_link2 = transformationmatrix(base_link_R_link2, base_link_P_link2);

% B-L3
% At time 1610413378.779
% - Translation: [0.081, 0.000, 0.474]
% - Rotation: in Quaternion [0.000, 0.342, 0.000, 0.940]
%             in RPY (radian) [0.000, 0.698, 0.000]
%             in RPY (degree) [0.000, 40.016, 0.000]
quaternion10 = [0.000 0.342 0.000 0.940];
base_link_R_link3 = quaterniontorotationmatrix(quaternion10);
base_link_P_link3 = [0.081 0.000 0.474];
% Matriz de Transformacao Homgenea
base_link_T_link3 = transformationmatrix(base_link_R_link3, base_link_P_link3);

% B-L4
% At time 1610413381.779
% - Translation: [0.024, 0.000, 0.522]
% - Rotation: in Quaternion [0.000, 0.342, 0.000, 0.940]
%             in RPY (radian) [0.000, 0.698, 0.000]
%             in RPY (degree) [0.000, 40.016, 0.000]
quaternion11 = [0.000 0.342 0.000 0.940];
base_link_R_link4 = quaterniontorotationmatrix(quaternion11);
base_link_P_link4 = [0.024 0.000 0.522];
% Matriz de Transformacao Homgenea
base_link_T_link4 = transformationmatrix(base_link_R_link4, base_link_P_link4);

% B-L5
% At time 1610413385.479
% - Translation: [0.159, 0.000, 0.683]
% - Rotation: in Quaternion [0.000, 0.342, 0.000, 0.940]
%             in RPY (radian) [0.000, 0.698, 0.000]
%             in RPY (degree) [0.000, 40.016, 0.000]
quaternion8 = [0.000 0.342 0.000 0.940];
base_link_R_link5 = quaterniontorotationmatrix(quaternion8);
base_link_P_link5 = [0.159 0.000 0.683];
% Matriz de Transformacao Homgenea
base_link_T_link5 = transformationmatrix(base_link_R_link5, base_link_P_link5);

% B-L6
% At time 1610413391.979
% - Translation: [0.204, 0.000, 0.736]
% - Rotation: in Quaternion [0.000, 0.342, 0.000, 0.940]
%             in RPY (radian) [0.000, 0.698, 0.000]
%             in RPY (degree) [0.000, 40.016, 0.000]
quaternion12 = [0.000 0.342 0.000 0.940];
base_link_R_link6 = quaterniontorotationmatrix(quaternion12);
base_link_P_link6 = [0.204 0.000 0.736];
% Matriz de Transformacao Homogenea
base_link_T_link6 = transformationmatrix(base_link_R_link6, base_link_P_link6);
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

% Substituindo os valores dos angulos das juntas
T_b_1 = double(subs(T_b_1, {theta1, theta2, theta3, theta4, theta5, theta6}, {0, -0.40, -0.30, 0, 0, 0}));
T_1_2 = double(subs(T_1_2, {theta1, theta2, theta3, theta4, theta5, theta6}, {0, -0.40, -0.30, 0, 0, 0}));
T_2_3 = double(subs(T_2_3, {theta1, theta2, theta3, theta4, theta5, theta6}, {0, -0.40, -0.30, 0, 0, 0}));
T_3_4 = double(subs(T_3_4, {theta1, theta2, theta3, theta4, theta5, theta6}, {0, -0.40, -0.30, 0, 0, 0}));
T_4_5 = double(subs(T_4_5, {theta1, theta2, theta3, theta4, theta5, theta6}, {0, -0.40, -0.30, 0, 0, 0}));
T_5_6 = double(subs(T_5_6, {theta1, theta2, theta3, theta4, theta5, theta6}, {0, -0.40, -0.30, 0, 0, 0}));

'Questao 1 - Tabela com parametros DH'
dh

'Questao 2 - Matrizes de Transformacao Homogeneas'
'O resultados das matrizes obtidas a partir da tabela dh foram comparados com os resultados obtidos na atividade 2'
base_link_T_link1
T_b_1
link1_T_link2
T_1_2
link2_T_link3
T_2_3
link3_T_link4
T_3_4
link4_T_link5
T_4_5
link5_T_link6
T_5_6

'Questao 3 - Funcao Cinematica Direta'
T_b_6 = T_b_1*T_1_2*T_2_3*T_3_4*T_4_5*T_5_6;

base_link_T_link6
T_b_6



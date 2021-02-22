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
%         secs: 1603828830
%         nsecs: 896852280
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
q0 = [0 0 0 1];
world_R_map = quaterniontorotationmatrix(q0);
world_P_map = [0 0 0];
world_T_map = transformationmatrix(world_R_map, world_P_map);
% transforms: 
%   - 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1603637309
%         nsecs: 501332755
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
q1 = [0 0 0 1];
map_R_tf1 = quaterniontorotationmatrix(q1);
map_P_tf1 = [0 0 0];
map_T_tf1 = transformationmatrix(map_R_tf1, map_P_tf1);
% transforms: 
%   - 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1603637309
%         nsecs: 529777050
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
%         z: 0.454363683811
%         w: 0.890816278945
q2 =[0 0 0.454363683811 0.890816278945];
base_link_R_link1 = quaterniontorotationmatrix(q2);
base_link_P_link1 = [0 0 0.155];
base_link_T_link1 = transformationmatrix(base_link_R_link1, base_link_P_link1);
%   - 
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1603637309
%         nsecs: 529777050
%       frame_id: "link1"
%     child_frame_id: "link2"
%     transform: 
%       translation: 
%         x: 0.0
%         y: 0.0
%         z: 0.125
%       rotation: 
%         x: 0.0
%         y: 0.319753197825
%         z: 0.0
%         w: 0.947500866744
%   - 
q3 =[0 0.319753197825 0 0.947500866744];
link1_R_link2 = quaterniontorotationmatrix(q3);
link1_P_link2 = [0 0 0.125];
link1_T_link2 = transformationmatrix(link1_R_link2, link1_P_link2);
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1603637309
%         nsecs: 529777050
%       frame_id: "link2"
%     child_frame_id: "link3"
%     transform: 
%       translation: 
%         x: 0.0
%         y: 0.0
%         z: 0.21
%       rotation: 
%         x: 0.0
%         y: 0.420465817707
%         z: 0.0
%         w: 0.907308379847
%   - 
q4 =[0 0.420465817707 0 0.907308379847];
link2_R_link3 = quaterniontorotationmatrix(q4);
link2_P_link3 = [0 0 0.21];
link2_T_link3 = transformationmatrix(link2_R_link3, link2_P_link3);
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1603637309
%         nsecs: 529777050
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
%         z: 0.36838418088
%         w: 0.929673649878
%   - 
q5 =[0 0 0.36838418088 0.929673649878];
link3_R_link4 = quaterniontorotationmatrix(q5);
link3_P_link4 = [-0.075 0 0];
link3_T_link4 = transformationmatrix(link3_R_link4, link3_P_link4);
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1603637309
%         nsecs: 529777050
%       frame_id: "link4"
%     child_frame_id: "link5"
%     transform: 
%       translation: 
%         x: 0.0
%         y: 0.0
%         z: 0.2
%       rotation: 
%         x: 0.0
%         y: -0.67130674114
%         z: 0.0
%         w: 0.741179640371
%   - 
q6 =[0 -0.67130674114 0 0.741179640371];
link4_R_link5 = quaterniontorotationmatrix(q6);
link4_P_link5 = [0 0 0.2];
link4_T_link5 = transformationmatrix(link4_R_link5, link4_P_link5);
%     header: 
%       seq: 0
%       stamp: 
%         secs: 1603637309
%         nsecs: 529777050
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
%         z: 0.691840782989
%         w: 0.722050088978
% ---

q7 =[0 0 0.691840782989 0.722050088978];
link5_R_link6 = quaterniontorotationmatrix(q7);
link5_P_link6 = [0 0 0.07];
link5_T_link6 = transformationmatrix(link5_R_link6, link5_P_link6);

% B-L2
% translation [0 0 0.280]
% rotation [-0.145 0.285 0.431 0.844]
q8 = [-0.145 0.285 0.431 0.844];
base_link_R_link2 = quaterniontorotationmatrix(q8);
base_link_P_link2 = [0, 0, 0.280];
base_link_T_link2 = transformationmatrix(base_link_R_link2, base_link_P_link2);
base_link_T_link2_comp = (base_link_T_link1 * link1_T_link2);

% B-L3
% translation [0.075 0.103 0.447]
% rotation [-0.313 0.613 0.330 0.646]
q9 = [-0.313 0.613 0.330 0.646];
base_link_R_link3 = quaterniontorotationmatrix(q9);
base_link_P_link3 = [0.075 0.103 0.447];
base_link_T_link3 = transformationmatrix(base_link_R_link3, base_link_P_link3);
base_link_T_link3_comp = ((base_link_T_link1 * link1_T_link2) * link2_T_link3);

% B-L4
% translation [0.072 0.100 0.522]
% rotation [-0.065 0.685 0.544 0.479]
q10 = [-0.065 0.685 0.544 0.479];
base_link_R_link4 = quaterniontorotationmatrix(q10);
base_link_P_link4 = [0.072 0.100 0.522];
base_link_T_link4 = transformationmatrix(base_link_R_link4, base_link_P_link4);
base_link_T_link4_comp = (((base_link_T_link1 * link1_T_link2) * link2_T_link3) * link3_T_link4);

% B-L5
% translation [0.196 0.270 0.533]
% rotation [0.317 0.186 0.447 0.815]
q11 = [0.317 0.186 0.447 0.815];
base_link_R_link5 = quaterniontorotationmatrix(q11);
base_link_P_link5 = [0.196 0.270 0.533];
base_link_T_link5 = transformationmatrix(base_link_R_link5, base_link_P_link5);
base_link_T_link5_comp = ((((base_link_T_link1 * link1_T_link2) * link2_T_link3) * link3_T_link4) * link4_T_link5);

% B-L6
% translation [0.237 0.245 0.584]
% rotation [0.358 -0.085 0.887 0.279]
q12 = [0.358 -0.085 0.887 0.279];
base_link_R_link6 = quaterniontorotationmatrix(q12);
base_link_P_link6 = [0.237 0.245 0.584];
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


'Comparação das matrizes de transformação homogêneas obtidas do Rviz e através da matriz dh'
base_link_T_link1
base_link_T_link1_dh = double(subs(base_link_T_link1_dh, {theta1}, {0.94}))
link1_T_link2
link1_T_link2_dh = double(subs(link1_T_link2_dh, {theta2}, {-0.65}))
link2_T_link3
link2_T_link3_dh = double(subs(link2_T_link3_dh, {theta3}, {-0.87}))
link3_T_link4
link3_T_link4_dh = double(subs(link3_T_link4_dh, {theta4}, {0.75}))
link4_T_link5
link4_T_link5_dh = double(subs(link4_T_link5_dh, {theta5}, {1.47}))
link5_T_link6
link5_T_link6_dh = double(subs(link5_T_link6_dh, {theta6}, {-4.76}))
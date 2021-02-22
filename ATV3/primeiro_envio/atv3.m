clear;
close all;
clc;
%%
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
quaternion0 = [1 0 0 0];
world_R_map = quaterniontorotationmatrix(quaternion0);
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

quaternion1 = [1 0 0 0];
map_R_tf1 = quaterniontorotationmatrix(quaternion1);
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
quaternion2 = [0.890816278945 0 0 0.454363683811];
base_link_R_link1 = quaterniontorotationmatrix(quaternion2);
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
quaternion3 = [0.947500866744 0 0.319753197825 0];
link1_R_link2 = quaterniontorotationmatrix(quaternion3);
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
quaternion4 = [0.907308379847 0 0.420465817707 0];
link2_R_link3 = quaterniontorotationmatrix(quaternion4);
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
quaternion5 = [0.929673649878 0 0 0.36838418088];
link3_R_link4 = quaterniontorotationmatrix(quaternion5);
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
quaternion6 = [0.741179640371 0 -0.67130674114 0];
link4_R_link5 = quaterniontorotationmatrix(quaternion6);
link4_P_link5 = [0 0 0.21];
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
quaternion7 = [0.722050088978 0 0 0.691840782989];
link5_R_link6 = quaterniontorotationmatrix(quaternion7);
link5_P_link6 = [0 0 0.07];
link5_T_link6 = transformationmatrix(link5_R_link6, link5_P_link6);

%% Matriz de Transformação Homogênea dos links em relação a base
% B-L1
% translation [0.000 0.000 0.155]
% rotation [0.000 0.000 0.454 0.891]

% B-L2
% translation [0 0 0.280]
% rotation [-0.145 0.285 0.431 0.844]
quaternion9 = [0.844 -0.145 0.285 0.431];
base_link_R_link2 = quaterniontorotationmatrix(quaternion9);
base_link_P_link2 = [0 0 0.280];
% Matriz de Transformação Homgênea
base_link_T_link2 = transformationmatrix(base_link_R_link2, base_link_P_link2);

% B-L3
% translation [0.075 0.103 0.447]
% rotation [-0.313 0.613 0.330 0.646]
quaternion10 = [0.646 -0.313 0.613 0.330];
base_link_R_link3 = quaterniontorotationmatrix(quaternion10);
base_link_P_link3 = [0.075 0.103 0.447];
% Matriz de Transformação Homgênea
base_link_T_link3 = transformationmatrix(base_link_R_link3, base_link_P_link3);

% B-L4
% translation [0.072 0.100 0.522]
% rotation [-0.065 0.685 0.544 0.479]
quaternion11 = [0.479 -0.065 0.685 0.544];
base_link_R_link4 = quaterniontorotationmatrix(quaternion11);
base_link_P_link4 = [0.072 0.100 0.522];
% Matriz de Transformação Homgênea
base_link_T_link4 = transformationmatrix(base_link_R_link4, base_link_P_link4);

% B-L5
% translation [0.196 0.270 0.533]
% rotation [0.317 0.186 0.447 0.815]
quaternion8 = [0.815 0.317 0.186 0.447];
base_link_R_link5 = quaterniontorotationmatrix(quaternion8);
base_link_P_link5 = [0.196 0.270 0.533];
% Matriz de Transformação Homgênea
base_link_T_link5 = transformationmatrix(base_link_R_link5, base_link_P_link5);

% B-L6
% translation [0.237 0.245 0.584]
% rotation [0.358 -0.085 0.887 0.279]
quaternion12 = [0.279 0.358 -0.085 0.887];
base_link_R_link6 = quaterniontorotationmatrix(quaternion12);
base_link_P_link6 = [0.237 0.245 0.584];
% Matriz de Transformação Homogênea
base_link_T_link6 = transformationmatrix(base_link_R_link6, base_link_P_link6);
%% Atividade 3
dh = [  0 0 0 0;
        0 0 0 0;
        0 0 0.155 0.94;
        -0.65 0 0.125 0;
        -0.87 0 0.21 0;
        0 -0.075 0 0.75;
        1.47 0 0.21 0;
        0 0 0.07 -4.76];

T_b_1 = translationz(dh(3,3))*rotationz(dh(3,4));
T_1_2 = translationz(dh(4,3))*rotationy(-dh(4,1));
T_2_3 = translationz(dh(5,3))*rotationy(-dh(5,1));
T_3_4 = translationx(dh(6,2))*rotationz(dh(6,4));
T_4_5 = translationz(dh(7,3))*rotationy(-dh(7,1));
T_5_6 = translationz(dh(8,3))*rotationz(dh(8,4));


dh = [  0 0 0 0;
        0 0 0 0;
        0 0 0.155 0.94;
        -0.65 0 0.125 0;
        -0.87 0 0.21 0;
        0 -0.075 0 0.75;
        1.47 0 0.21 0;
        0 0 0.07 -4.76];

'Questão 1 - Tabela com parâmetros DH'
dh

'Questão 2 - Matrizes de Transformação Homogêneas'
'O resultado das matrizes foi comparado com os resultados obtidos na atividade 2'
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

'Questão 3 - Função Cinemática Direta'
T_b_6 = T_b_1*T_1_2*T_2_3*T_3_4*T_4_5*T_5_6;

base_link_T_link6
T_b_6
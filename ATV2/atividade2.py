import numpy as np 
import math

def quaterniontorotationmatrix(a): 
    w = a[0]
    x = a[1]
    y = a[2]
    z = a[3]

    r11 = (1-2*((math.pow(y,2))+(math.pow(z,2))))
    r12 = ((2*x*y)-(2*z*w))
    r13 = ((2*x*z)+(2*y*w))
    r21 = ((2*x*y)+(2*z*w))
    r22 = (1-2*((math.pow(x,2))+(math.pow(z,2))))
    r23 = (2*y*z)-(2*x*w)
    r31 = (2*x*z)-(2*y*w)
    r32 = ((2*y*z)+(2*x*w))
    r33 = (1-2*((math.pow(x,2))+(math.pow(y,2))))

    rotation_matrix = np.zeros((3,3), dtype=float)
    rotation_matrix = np.array([ [r11, r12, r13], 
                                [r21, r22, r23],
                                [r31, r32, r33] ])

    return rotation_matrix

def transformationmatrix(rotation_matrix, translation_matrix):
    r11=rotation_matrix[0,0]
    r12=rotation_matrix[0,1]
    r13=rotation_matrix[0,2]
    r21=rotation_matrix[1,0]
    r22=rotation_matrix[1,1]
    r23=rotation_matrix[1,2]
    r31=rotation_matrix[2,0]
    r32=rotation_matrix[2,1]
    r33=rotation_matrix[2,2]
    tm1=translation_matrix[0]
    tm2=translation_matrix[1]
    tm3=translation_matrix[2]

    transformation_matrix = np.zeros((3,3), dtype=float)
    transformation_matrix = np.array([  [r11, r12, r13, tm1], 
                                        [r21, r22, r23, tm2],
                                        [r31, r32, r33, tm3],
                                        [0,   0,   0,   1  ] ])

    return transformation_matrix


"Questão 3"

"""
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
"""
quaternion0 = [1, 0, 0, 0]
world_R_map = quaterniontorotationmatrix(quaternion0)
world_P_map = [0, 0, 0]
world_T_map = transformationmatrix(world_R_map, world_P_map)
"""
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
"""
quaternion1 = [1, 0, 0, 0]
map_R_tf1 = quaterniontorotationmatrix(quaternion1)
map_P_tf1 = [0, 0, 0]
map_T_tf1 = transformationmatrix(map_R_tf1, map_P_tf1)

"""
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
"""
quaternion2 = [0.890816278945, 0, 0, 0.454363683811]
base_link_R_link1 = quaterniontorotationmatrix(quaternion2)
base_link_P_link1 = [0, 0, 0.155]
base_link_T_link1 = transformationmatrix(base_link_R_link1, base_link_P_link1)

"""
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
"""
quaternion3 = [0.947500866744, 0, 0.319753197825, 0]
link1_R_link2 = quaterniontorotationmatrix(quaternion3)
link1_P_link2 = [0, 0, 0.125]
link1_T_link2 = transformationmatrix(link1_R_link2, link1_P_link2)

"""
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
"""

quaternion4 = [0.907308379847, 0, 0.420465817707, 0]
link2_R_link3 = quaterniontorotationmatrix(quaternion4)
link2_P_link3 = [0, 0, 0.21]
link2_T_link3 = transformationmatrix(link2_R_link3, link2_P_link3)

"""
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
"""
quaternion5 = [0.929673649878, 0, 0, 0.36838418088]
link3_R_link4 = quaterniontorotationmatrix(quaternion5)
link3_P_link4 = [-0.075, 0, 0]
link3_T_link4 = transformationmatrix(link3_R_link4, link3_P_link4)

"""
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
%         z: 0.21
%       rotation: 
%         x: 0.0
%         y: -0.67130674114
%         z: 0.0
%         w: 0.741179640371
%   - 
"""

quaternion6 = [0.741179640371, 0, -0.67130674114, 0]
link4_R_link5 = quaterniontorotationmatrix(quaternion6)
link4_P_link5 = [0, 0, 0.21]
link4_T_link5 = transformationmatrix(link4_R_link5, link4_P_link5)

"""
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
"""

quaternion7 = [0.722050088978, 0, 0, 0.691840782989]
link5_R_link6 = quaterniontorotationmatrix(quaternion7)
link5_P_link6 = [0, 0, 0.07]
link5_T_link6 = transformationmatrix(link5_R_link6, link5_P_link6)

"Questão 4"
"""
B-L6
translation [0.237 0.245 0.584]
rotation [0.358 -0.085 0.887 0.279]
"""
quaternion12 = [0.279, 0.358, -0.085, 0.887]
base_link_R_link6 = quaterniontorotationmatrix(quaternion12)
base_link_P_link6 = [0.237, 0.245, 0.584]
base_link_T_link6 = transformationmatrix(base_link_R_link6, base_link_P_link6)
base_link_T_link6_comp = np.matmul(np.matmul(np.matmul(np.matmul(np.matmul(base_link_T_link1, link1_T_link2), link2_T_link3), link3_T_link4), link4_T_link5), link5_T_link6)

"Questão 5"
"""
L6-TF1
translation [-0.366 0.306 -0.479]
rotation [0.358 -0.085 0.887 -0.279]
"""
quaternion13 = [-0.279, 0.358, -0.085, 0.887]
link6_R_tf1 = quaterniontorotationmatrix(quaternion13)
link6_P_tf1 = [-0.366, 0.306, -0.479]
link6_T_tf1 = transformationmatrix(link6_R_tf1, link6_P_tf1)

link6_T_tf1_comp = np.linalg.inv(base_link_T_link6)

"Matrizes de Transformação Homogênea de cada Link em relação a Base_Link"
"""
B-L2
translation [0 0 0.280]
rotation [-0.145 0.285 0.431 0.844]
"""
quaternion9 = [0.844, -0.145, 0.285, 0.431]
base_link_R_link2 = quaterniontorotationmatrix(quaternion9)
base_link_P_link2 = [0, 0, 0.280]
base_link_T_link2 = transformationmatrix(base_link_R_link2, base_link_P_link2)
base_link_T_link2_comp = np.matmul(base_link_T_link1, link1_T_link2)

"""
B-L3
translation [0.075 0.103 0.447]
rotation [-0.313 0.613 0.330 0.646]
"""
quaternion10 = [0.646, -0.313, 0.613, 0.330]
base_link_R_link3 = quaterniontorotationmatrix(quaternion10)
base_link_P_link3 = [0.075, 0.103, 0.447]
base_link_T_link3 = transformationmatrix(base_link_R_link3, base_link_P_link3)
base_link_T_link3_comp = np.matmul(np.matmul(base_link_T_link1, link1_T_link2), link2_T_link3)

"""
B-L4
translation [0.072 0.100 0.522]
rotation [-0.072 0.685 0.544 0.449]
"""
quaternion11 = [0.449, -0.072, 0.685, 0.544]
base_link_R_link4 = quaterniontorotationmatrix(quaternion11)
base_link_P_link4 = [0.072, 0.100, 0.522]
base_link_T_link4 = transformationmatrix(base_link_R_link4, base_link_P_link4)
base_link_T_link4_comp = np.matmul(np.matmul(np.matmul(base_link_T_link1, link1_T_link2), link2_T_link3), link3_T_link4)

"""
B-L5
translation [0.191 0.264 0.542]
rotation [0.323 0.174 0.452 0.813]
"""
quaternion8 = [0.813, 0.323, 0.174, 0.452]
base_link_R_link5 = quaterniontorotationmatrix(quaternion8)
base_link_P_link5 = [0.191, 0.264, 0.542]
base_link_T_link5 = transformationmatrix(base_link_R_link5, base_link_P_link5)
base_link_T_link5_comp = np.matmul(np.matmul(np.matmul(np.matmul(base_link_T_link1, link1_T_link2), link2_T_link3), link3_T_link4), link4_T_link5)


print("Questão 3 - Matrizes de Transformação Homogênea")
print("Base_Link-Link1")
print(base_link_T_link1)
print("\n")
print("Link1-Link2")
print(link1_T_link2)
print("\n")
print("Link2-Link3")
print(link2_T_link3)
print("\n")
print("Link3-Link4")
print(link3_T_link4)
print("\n")
print("Link4-Link5")
print(link4_T_link5)
print("\n")
print("Link5-Link6")
print(link5_T_link6)
print("\n")
print("Questão 4")
print("B-L6")
print("Transformação Homogênea fornecida pelo Rviz de Link6 em relação a Base_Link")
print(base_link_T_link6)
print("\n")
print("Composição de Transformações de Link6 em relação a Base_Link")
print(base_link_T_link6_comp)
print("\n")
print("Questão 5 - Matrix de Transformação Homogênea de tf1 em relação a Link6")
print("Transformação Homogênea fornecida pelo Rviz de tf1 em relação a Link6")
print(link6_T_tf1)
print("\n")
print("Nesse exemplo, tf1 = base_link, Inversa da Matriz de Transformação Homogênea de Link6 em Relação a Base_Link")
print(link6_T_tf1_comp)
print("\n")

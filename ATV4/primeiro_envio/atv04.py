import numpy as np 
import math 
def quaterniontorotationmatrix(a): 
    w = a[3]
    x = a[0]
    y = a[1]
    z = a[2]

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

def dh_transformation_matrix(dh, n):

  #n_iminus1_T_n = Rx(alphaiminus1)Dx(alphaiminus1)Rz(thetai)Dz(di)
  rn0 = dh[n,0]
  rn1 = dh[n,1]
  rn2 = dh[n,2]
  rn3 = dh[n,3]
  n_iminus1_T_n = np.zeros((4,4), dtype=float)
  n_iminus1_T_n = np.array([
    [np.cos(rn3), -(np.sin(rn3) * np.cos(rn0)), (np.sin(rn3) * np.sin(rn0)), (rn1 * np.cos(rn3))],
    [np.sin(rn3), (np.cos(rn3) * np.cos(rn0)), -(np.cos(rn3) * np.sin(rn0)), (rn1 * np.sin(rn3))],
    [0.0 , np.sin(rn0), np.cos(rn0), rn2],
    [0.0, 0.0, 0.0, 1.0]  ])

  return n_iminus1_T_n

"""
 def jacobianmatrix(base_link_T_link1, link1_T_link, link2_T_link3, link3_T_link4, 
                    link4_T_link5, link4_T_link5, link5_T_link6, base_link_T_link2, 
                    base_link_T_link3, base_link_T_link4, base_link_T_link5, 
                    base_link_T_link6):


  jacobian_matrix = np.zeros((6,6), dtype=float)

  R_0_1 = R_1_2 = R_2_3 = R_3_4 = R_4_5 = R_5_6 = np.identity(6, dtype=float)

"""  
"""
---
transforms: 
  - 
    header: 
      seq: 0
      stamp: 
        secs: 1607975429
        nsecs: 501818924
      frame_id: "world"
    child_frame_id: "map"
    transform: 
      translation: 
        x: 0.0
        y: 0.0
        z: 0.0
      rotation: 
        x: 0.0
        y: 0.0
        z: 0.0
        w: 1.0
---
"""
q0 = [0, 0, 0, 1]
world_R_map = quaterniontorotationmatrix(q0)
world_P_map = [0, 0, 0]
world_T_map = transformationmatrix(world_R_map, world_P_map)

"""
transforms: 
  - 
    header: 
      seq: 0
      stamp: 
        secs: 1607975429
        nsecs: 422797874
      frame_id: "map"
    child_frame_id: "tf1"
    transform: 
      translation: 
        x: 0.0
        y: 0.0
        z: 0.0
      rotation: 
        x: 0.0
        y: 0.0
        z: 0.0
        w: 1.0
---
"""
q1 = [0, 0, 0, 1]
map_R_tf1 = quaterniontorotationmatrix(q1)
map_P_tf1 = [0, 0, 0]
map_T_tf1 = transformationmatrix(map_R_tf1, map_P_tf1)

"""
transforms: 
  - 
    header: 
      seq: 0
      stamp: 
        secs: 1607975429
        nsecs: 472798406
      frame_id: "map"
    child_frame_id: "tf1"
    transform: 
      translation: 
        x: 0.0
        y: 0.0
        z: 0.0
      rotation: 
        x: 0.0
        y: 0.0
        z: 0.0
        w: 1.0
---
"""

"""
transforms: 
  - 
    header: 
      seq: 0
      stamp: 
        secs: 1607975429
        nsecs: 474611043
      frame_id: "base_link"
    child_frame_id: "link1"
    transform: 
      translation: 
        x: 0.0
        y: 0.0
        z: 0.155
      rotation: 
        x: 0.0
        y: 0.0
        z: 0.0
        w: 1.0
  - 
"""
q2 =[0, 0, 0, 1]
base_link_R_link1 = quaterniontorotationmatrix(q2)
base_link_P_link1 = [0, 0, 0.155]
base_link_T_link1 = transformationmatrix(base_link_R_link1, base_link_P_link1)
"""
    header: 
      seq: 0
      stamp: 
        secs: 1607975429
        nsecs: 474611043
      frame_id: "link1"
    child_frame_id: "link2"
    transform: 
      translation: 
        x: 0.0
        y: 0.0
        z: 0.125
      rotation: 
        x: 0.0
        y: 0.0
        z: 0.0
        w: 1.0
  - 
"""
q3 =[0, 0, 0, 1]
link1_R_link2 = quaterniontorotationmatrix(q3)
link1_P_link2 = [0, 0, 0.125]
link1_T_link2 = transformationmatrix(link1_R_link2, link1_P_link2)
"""
    header: 
      seq: 0
      stamp: 
        secs: 1607975429
        nsecs: 474611043
      frame_id: "link2"
    child_frame_id: "link3"
    transform: 
      translation: 
        x: 0.0
        y: 0.0
        z: 0.21
      rotation: 
        x: 0.0
        y: 0.0
        z: 0.0
        w: 1.0
  - 
  """
q4 =[0, 0, 0, 1]
link2_R_link3 = quaterniontorotationmatrix(q4)
link2_P_link3 = [0, 0, 0.21]
link2_T_link3 = transformationmatrix(link2_R_link3, link2_P_link3)
"""
    header: 
      seq: 0
      stamp: 
        secs: 1607975429
        nsecs: 474611043
      frame_id: "link3"
    child_frame_id: "link4"
    transform: 
      translation: 
        x: -0.075
        y: 0.0
        z: 0.0
      rotation: 
        x: 0.0
        y: 0.0
        z: 0.0
        w: 1.0
  - 
"""
q5 =[0, 0, 0, 1]
link3_R_link4 = quaterniontorotationmatrix(q5)
link3_P_link4 = [-0.075, 0, 0]
link3_T_link4 = transformationmatrix(link3_R_link4, link3_P_link4)
"""
    header: 
      seq: 0
      stamp: 
        secs: 1607975429
        nsecs: 474611043
      frame_id: "link4"
    child_frame_id: "link5"
    transform: 
      translation: 
        x: 0.0
        y: 0.0
        z: 0.21
      rotation: 
        x: 0.0
        y: 0.0
        z: 0.0
        w: 1.0
  - 
"""
q6 =[0, 0, 0, 1]
link4_R_link5 = quaterniontorotationmatrix(q6)
link4_P_link5 = [0, 0, 0.21]
link4_T_link5 = transformationmatrix(link4_R_link5, link4_P_link5)
"""

    header: 
      seq: 0
      stamp: 
        secs: 1607975429
        nsecs: 474611043
      frame_id: "link5"
    child_frame_id: "link6"
    transform: 
      translation: 
        x: 0.0
        y: 0.0
        z: 0.07
      rotation: 
        x: 0.0
        y: 0.0
        z: 0.0
        w: 1.0
"""

q7 =[0, 0, 0, 1]
link5_R_link6 = quaterniontorotationmatrix(q7)
link5_P_link6 = [0, 0, 0.07]
link5_T_link6 = transformationmatrix(link5_R_link6, link5_P_link6)

"""
BL-L1
- Translation: [0.000, 0.000, 0.155]
- Rotation: in Quaternion [0.000, 0.000, 0.000, 1.000]
            in RPY (radian) [0.000, -0.000, 0.000]
            in RPY (degree) [0.000, -0.000, 0.000]
"""
"""
BL-L2
- Translation: [0.000, 0.000, 0.280]
- Rotation: in Quaternion [0.000, 0.000, 0.000, 1.000]
            in RPY (radian) [0.000, -0.000, 0.000]
            in RPY (degree) [0.000, -0.000, 0.000]
"""
q8 = [0, 0, 0, 1]
base_link_R_link2 = quaterniontorotationmatrix(q8)
base_link_P_link2 = [0, 0, 0.280]
base_link_T_link2 = transformationmatrix(base_link_R_link2, base_link_P_link2)
base_link_T_link2_comp = np.matmul(base_link_T_link1, link1_T_link2)
"""
B-L3
- Translation: [0.000, 0.000, 0.490]
- Rotation: in Quaternion [0.000, 0.000, 0.000, 1.000]
            in RPY (radian) [0.000, -0.000, 0.000]
            in RPY (degree) [0.000, -0.000, 0.000]
"""
q9 = [0, 0, 0, 1]
base_link_R_link3 = quaterniontorotationmatrix(q9)
base_link_P_link3 = [0, 0, 0.490]
base_link_T_link3 = transformationmatrix(base_link_R_link3, base_link_P_link3)
base_link_T_link3_comp = np.matmul(np.matmul(base_link_T_link1, link1_T_link2), link2_T_link3)
"""
B-L4
- Translation: [-0.075, 0.000, 0.490]
- Rotation: in Quaternion [0.000, 0.000, 0.000, 1.000]
            in RPY (radian) [0.000, -0.000, 0.000]
            in RPY (degree) [0.000, -0.000, 0.000]
"""
q10 = [0, 0, 0, 1]
base_link_R_link4 = quaterniontorotationmatrix(q10)
base_link_P_link4 = [-0.075, 0, 0.490]
base_link_T_link4 = transformationmatrix(base_link_R_link4, base_link_P_link4)
base_link_T_link4_comp = np.matmul(np.matmul(np.matmul(base_link_T_link1, link1_T_link2), link2_T_link3), link3_T_link4)
"""
B-L5
- Translation: [-0.075, 0.000, 0.700]
- Rotation: in Quaternion [0.000, 0.000, 0.000, 1.000]
            in RPY (radian) [0.000, -0.000, 0.000]
            in RPY (degree) [0.000, -0.000, 0.000]

"""
q11 = [0, 0, 0, 1]
base_link_R_link5 = quaterniontorotationmatrix(q11)
base_link_P_link5 = [-0.075, 0, 0.700]
base_link_T_link5 = transformationmatrix(base_link_R_link5, base_link_P_link5)
base_link_T_link5_comp = np.matmul(np.matmul(np.matmul(np.matmul(base_link_T_link1, link1_T_link2), link2_T_link3), link3_T_link4), link4_T_link5)
"""
B-L6
- Translation: [-0.075, 0.000, 0.770]
- Rotation: in Quaternion [0.000, 0.000, 0.000, 1.000]
            in RPY (radian) [0.000, -0.000, 0.000]
            in RPY (degree) [0.000, -0.000, 0.000]

"""
q12 = [0, 0, 0, 1]
base_link_R_link6 = quaterniontorotationmatrix(q12)
base_link_P_link6 = [-0.075, 0, 0.770]
base_link_T_link6 = transformationmatrix(base_link_R_link6, base_link_P_link6)
base_link_T_link6_comp = np.matmul(np.matmul(np.matmul(np.matmul(np.matmul(base_link_T_link1, link1_T_link2), link2_T_link3), link3_T_link4), link4_T_link5), link5_T_link6)


dh = np.zeros((6,4), dtype=float)
dh = np.array([ [0, 0, 0.155, 0], 
        [(0/180.0)*np.pi, 0, 0.125, (0/180.0)*np.pi],
        [(0/180.0)*np.pi, 0, 0.210, (0/180.0)*np.pi],
        [(0/180.0)*np.pi, -0.075, 0, (0/180.0)*np.pi],
        [(0/180.0)*np.pi, 0, 0.210, (0/180.0)*np.pi],
        [(0/180.0)*np.pi, 0, 0.070, (0/180.0)*np.pi] ])

"""
print("B-L2")
print(base_link_T_link2)
print("\n")
print("B-L2-Comp")
print(base_link_T_link2_comp)
print("\n\n")

print("B-L3")
print(base_link_T_link3)
print("\n")
print("B-L3-Comp")
print(base_link_T_link3_comp)
print("\n\n")

print("B-L4")
print(base_link_T_link4)
print("\n")
print("B-L4-Comp")
print(base_link_T_link4_comp)
print("\n\n")

print("B-L5")
print(base_link_T_link5)
print("\n")
print("B-L5-Comp")
print(base_link_T_link5_comp)
print("\n\n")

print("B-L6")
print(base_link_T_link6)
print("\n")
print("B-L6-Comp")
print(base_link_T_link6_comp)
print("\n\n")
"""

"""
print("Matriz de DH")
print("B-L1")
print(base_link_T_link1)
print("\n")
print("B-L1-DH")
base_link_T_link1_dh = dh_transformation_matrix(dh,0)
print(base_link_T_link1_dh)
print("\n\n")

print("L1-L2")
print(link1_T_link2)
print("\n")
print("L1-L2-DH")
link1_T_link2_dh = dh_transformation_matrix(dh,1)
print(link1_T_link2_dh)
print("\n\n")

print("L2-L3")
print(link2_T_link3)
print("\n")
print("L2-L3-DH")
link2_T_link3_dh = dh_transformation_matrix(dh,2)
print(link2_T_link3_dh)
print("\n\n")

print("L3-L4")
print(link3_T_link4)
print("\n")
print("L3-L4-DH")
link3_T_link4_dh = dh_transformation_matrix(dh,3)
print(link3_T_link4_dh)
print("\n\n")

print("L4-L5")
print(link4_T_link5)
print("\n")
print("L4-L5-DH")
link4_T_link5_dh = dh_transformation_matrix(dh,4)
print(link4_T_link5_dh)
print("\n\n")

print("L5-L6")
print(link5_T_link6)
print("\n")
print("L5-L6-DH")
link5_T_link6_dh = dh_transformation_matrix(dh,5)
print(link5_T_link6_dh)
print("\n\n")
"""

"""
print("B-L1")
print(base_link_T_link1)
print("\n")
print("L1-L2")
print(link1_T_link2)
print("\n")
print("L2-L3")
print(link2_T_link3)
print("\n")
print("L3-L4")
print(link3_T_link4)
print("\n")
print("L4-L5")
print(link4_T_link5)
print("\n")
print("L5-L6")
print(link5_T_link6)
print("\n")
"""
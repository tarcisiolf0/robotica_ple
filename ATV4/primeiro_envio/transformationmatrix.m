function t = transformationmatrix(rotation_matrix, translation_matrix)
r11=rotation_matrix(1,1);
r12=rotation_matrix(1,2);
r13=rotation_matrix(1,3);
r21=rotation_matrix(2,1);
r22=rotation_matrix(2,2);
r23=rotation_matrix(2,3);
r31=rotation_matrix(3,1);
r32=rotation_matrix(3,2);
r33=rotation_matrix(3,3);
tm1=translation_matrix(1);
tm2=translation_matrix(2);
tm3=translation_matrix(3);

t = [r11 r12 r13 tm1;
     r21 r22 r23 tm2;
     r31 r32 r33 tm3;
     0   0   0   1];

end
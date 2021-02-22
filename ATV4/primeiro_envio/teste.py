'''
	teta1 = symbols('teta_1')
	teta2 = symbols('teta_2')
	teta3 = symbols('teta_3')
	teta4 = symbols('teta_4')
	teta5 = symbols('teta_5')
	teta6 = symbols('teta_6')
	'''

	#Pega a posição atual das juntas
	teta1 = get_state.main(1)
	teta2 = get_state.main(2)
	teta3 = get_state.main(3)
	teta4 = get_state.main(4)
	teta5 = get_state.main(5)
	teta6 = get_state.main(6)
	
	


	#rotação e translação no eixo z
	tb1 = Matrix([ [cos(teta1), -sin(teta1), 0, 0], [sin(teta1), cos(teta1), 0,0],[0,0,1,0.155],[0,0,0,1]])

	#translação no eixo z e rotação no eixo y
	t12 = Matrix([ [cos(-teta2), 0, sin(-teta2), 0], [0, 1, 0,0],[-sin(-teta2),0,cos(-teta2),0.125],[0,0,0,1]])

	#translação no eixo z e rotação no eixo y
	t23 = Matrix([ [cos(-teta3), 0, sin(-teta3), 0], [0, 1, 0,0],[-sin(-teta3),0,cos(-teta3),0.21],[0,0,0,1]])

	#rotação de -pi/2 no eixo y
	t34_1 = Matrix([ [cos(-pi/2), 0, sin(-pi/2), 0], [0, 1, 0,0],[-sin(-pi/2),0,cos(-pi/2),0],[0,0,0,1]])

	#translação no eixo z e rotação no eixo y de pi/2
	t34_2 = Matrix([ [cos(pi/2), 0, sin(pi/2), 0], [0, 1, 0,0],[-sin(pi/2),0,cos(pi/2),0.075],[0,0,0,1]])

	#rotação no eixo z
	t34_3 = Matrix([ [cos(teta4), -sin(teta4), 0, 0], [sin(teta4), cos(teta4), 0,0],[0,0,1,0],[0,0,0,1]])

	t34 = t34_1*t34_2*t34_3

	#translação no eixo z e rotação no eixo y
	t45 = Matrix([ [cos(-teta5), 0, sin(-teta5), 0], [0, 1, 0,0],[-sin(-teta5),0,cos(-teta5),0.21],[0,0,0,1]])

	#translação e rotação no eixo z
	t56 = Matrix([ [cos(teta6), -sin(teta6), 0, 0], [sin(teta6), cos(teta6), 0,0],[0,0,1,0.07],[0,0,0,1]])

	tb6 = tb1*t12*t23*t34*t45*t56
	

	'''
	m = np.array(tb6)
	print(m)
	qw = math.sqrt(1 + m[0][0] + m[1][1] + m[2][2]) /2
	qx = (m[2][1] - m[1][2])/( 4 *qw)
	qy = (m[0][2] - m[2][0])/( 4 *qw)
	qz = (m[1][0] - m[0][1])/( 4 *qw)
	print('rotation in quarternium:', qx,qy,qz,qw)
	print('translation:', m[0][3],m[1][3],m[2][3])
	exit()
	'''
	
	#-------- CALCULANDO OS VETORES DE VELOCIDADE ANGULAR E LINEAR ----------------------#

	deri_teta1 = symbols('deri_teta1')
	deri_teta1_vector = Matrix([[0],[0],[deri_teta1]])

	w0 = Matrix([[0],[0],[0]])
	v0 = Matrix([[0],[0],[0]])

	w1 = tb1[:3,:3]*(w0) + deri_teta1_vector
	v1 = tb1[:3,:3]*( v0 + (w0.cross(tb1[:3,3:])) )

	#print('vel. angular 1:\n',w1)
	#print('vel. linear 1:\n',v1)


	deri_teta2 = symbols('deri_teta2')
	deri_teta2_vector = Matrix([[0],[0],[deri_teta2]])

	w2 = t12[:3,:3]*(w1) + deri_teta2_vector
	v2 = t12[:3,:3]*( v1 + (w1.cross(t12[:3,3:])) )

	#print('vel. angular 2:\n',w2)
	#print('vel. linear 2:\n',v2)


	deri_teta3 = symbols('deri_teta3')
	deri_teta3_vector = Matrix([[0],[0],[deri_teta3]])

	w3 = t23[:3,:3]*(w2) + deri_teta3_vector
	v3 = t23[:3,:3]*( v2 + (w2.cross(t23[:3,3:])) )

	#print('vel. angular 3:\n',w3)
	#print('vel. linear 3:\n',v3)


	deri_teta4 = symbols('deri_teta4')
	deri_teta4_vector = Matrix([[0],[0],[deri_teta4]])

	w4 = t34[:3,:3]*(w3) + deri_teta4_vector
	v4 = t34[:3,:3]*( v3 + (w3.cross(t34[:3,3:])) )

	#print('vel. angular 4:\n',w4)
	#print('vel. linear 4:\n',v4)


	deri_teta5 = symbols('deri_teta5')
	deri_teta5_vector = Matrix([[0],[0],[deri_teta5]])

	w5 = t45[:3,:3]*(w4) + deri_teta5_vector
	v5 = t45[:3,:3]*( v4 + (w4.cross(t45[:3,3:])) )

	#print('vel. angular 5:\n',w5)
	#print('vel. linear 5:\n',v5)


	deri_teta6 = symbols('deri_teta6')
	deri_teta6_vector = Matrix([[0],[0],[deri_teta6]])

	w6 = t56[:3,:3]*(w5) + deri_teta6_vector
	v6 = t56[:3,:3]*( v5 + (w5.cross(t56[:3,3:])) )

	#print('vel. angular 6:\n',w6)
	#print('vel. linear 6:\n',v6)
	
	deri_teta = Matrix([deri_teta1,deri_teta2,deri_teta3,deri_teta4,deri_teta5,deri_teta6])

	j1 = np.concatenate((np.array(v1.jacobian(deri_teta)).astype(np.float32),np.array(w1.jacobian(deri_teta)).astype(np.float32)))
	j2 = np.concatenate((np.array(v2.jacobian(deri_teta)).astype(np.float32),np.array(w2.jacobian(deri_teta)).astype(np.float32)))
	j3 = np.concatenate((np.array(v3.jacobian(deri_teta)).astype(np.float32),np.array(w3.jacobian(deri_teta)).astype(np.float32)))
	j4 = np.concatenate((np.array(v4.jacobian(deri_teta)).astype(np.float32),np.array(w4.jacobian(deri_teta)).astype(np.float32)))
	j5 = np.concatenate((np.array(v5.jacobian(deri_teta)).astype(np.float32),np.array(w5.jacobian(deri_teta)).astype(np.float32)))
	j6 = np.concatenate((np.array(v6.jacobian(deri_teta)).astype(np.float32),np.array(w6.jacobian(deri_teta)).astype(np.float32)))

	print('Jacobian 1:\n',j1)
	print('Jacobian 2:\n',j2)
	print('Jacobian 3:\n',j3)
	print('Jacobian 4:\n',j4)
	print('Jacobian 5:\n',j5)
	print('Jacobian 6:\n',j6)
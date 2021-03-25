(define (problem problem_7_6)
	(:domain sokoban)
	(:objects
		f_1_3 f_1_4 f_1_5
		f_2_1 f_2_2 f_2_3 f_2_4 f_2_5
		f_3_3 f_3_4 f_3_5
		f_4_1 f_4_4 f_4_5
		f_5_1 f_5_3 f_5_4 f_5_5
		f_6_1 f_6_2 f_6_3 f_6_4 f_6_5 f_6_6
		f_7_1 f_7_2 f_7_3 f_7_4 f_7_5 f_7_6 
	)

	(:init (hori f_1_3 f_1_4)
		(hori f_1_4 f_1_5)
		(hori f_1_5 f_1_4)
		(hori f_1_4 f_1_3)

		(hori f_2_1 f_2_2)
		(hori f_2_2 f_2_1)
		(hori f_2_2 f_2_3)
		(hori f_2_3 f_2_2)
		(hori f_2_3 f_2_4)
		(hori f_2_4 f_2_3)
		(hori f_2_4 f_2_5)
		(hori f_2_5 f_2_4)

		(hori f_3_3 f_3_4)
		(hori f_3_4 f_3_3)
		(hori f_3_4 f_3_5)
		(hori f_3_5 f_3_4)

		(hori f_4_4 f_4_5)
		(hori f_4_5 f_4_4)

		(hori f_5_3 f_5_4)
		(hori f_5_4 f_5_3)
		(hori f_5_4 f_5_5)
		(hori f_5_5 f_5_4)

		(hori f_6_1 f_6_2)
		(hori f_6_2 f_6_1)
		(hori f_6_2 f_6_3)
		(hori f_6_3 f_6_2)
		(hori f_6_3 f_6_4)
		(hori f_6_4 f_6_3)
		(hori f_6_4 f_6_5)
		(hori f_6_5 f_6_4)
		(hori f_6_5 f_6_6)
		(hori f_6_6 f_6_5)

		(hori f_7_1 f_7_2)
		(hori f_7_2 f_7_1)
		(hori f_7_2 f_7_3)
		(hori f_7_3 f_7_2)
		(hori f_7_3 f_7_4)
		(hori f_7_4 f_7_3)
		(hori f_7_4 f_7_5)
		(hori f_7_5 f_7_4)
		(hori f_7_5 f_7_6)
		(hori f_7_6 f_7_5)


		(vart f_4_1 f_5_1)
		(vart f_5_1 f_4_1)
		(vart f_5_1 f_6_1)
		(vart f_5_1 f_6_1)
		(vart f_6_1 f_7_1)
		(vart f_7_1 f_6_1)

		(vart f_6_2 f_7_2)
		(vart f_7_2 f_6_2)

		(vart f_1_3 f_2_3)
		(vart f_2_3 f_1_3)
		(vart f_2_3 f_3_3)
		(vart f_3_3 f_2_3)
		(vart f_5_3 f_6_3)
		(vart f_6_3 f_5_3)
		(vart f_6_3 f_7_3)
		(vart f_7_3 f_6_3)

		(vart f_1_4 f_2_4)
		(vart f_2_4 f_1_4)
		(vart f_2_4 f_3_4)
		(vart f_3_4 f_2_4)
		(vart f_3_4 f_4_4)
		(vart f_4_4 f_3_4)
		(vart f_4_4 f_5_4)
		(vart f_5_4 f_4_4)
		(vart f_5_4 f_6_4)
		(vart f_6_4 f_5_4)
		(vart f_6_4 f_7_4)
		(vart f_7_4 f_6_4)


		(vart f_1_5 f_2_5)
		(vart f_2_5 f_1_5)
		(vart f_2_5 f_3_5)
		(vart f_3_5 f_2_5)
		(vart f_3_5 f_4_5)
		(vart f_4_5 f_3_5)
		(vart f_4_5 f_5_5)
		(vart f_5_5 f_4_5)
		(vart f_5_5 f_6_5)
		(vart f_6_5 f_5_5)
		(vart f_6_5 f_7_5)
		(vart f_7_5 f_6_5)

		(vart f_6_6 f_7_6)
		(vart f_7_6 f_6_6)

		(pack f_2_3)
		(pack f_3_4)
		(pack f_4_4)
		(pack f_6_1)
		(pack f_6_3)
		(pack f_6_4)
		(pack f_6_5)

		(cel f_2_1)
		(cel f_3_5)
		(cel f_4_1)
		(cel f_5_4)	
		(cel f_6_3)	
		(cel f_6_6)
		(cel f_7_4)

		(robot f_2_2)
	)
	(:goal (and
		(pack f_2_1)
		(pack f_3_5)
		(pack f_4_1)
		(pack f_5_4)	
		(pack f_6_3)	
		(pack f_6_6)
		(pack f_7_4)
	))
)
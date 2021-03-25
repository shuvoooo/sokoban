(define
	(domain sokoban)
	(:requirements :adl)
	(:predicates
		(h ?f1 ?f2)
		(v ?f1 ?f2)
		(box ?f)
		(c ?f)
		(agent ?f)
	)
	(:action go
		:parameters (?f1 ?f2)
		:precondition
		(and
			(not (= ?f1 ?f2))
			(agent ?f1)
			(or (h ?f1 ?f2)(v ?f1 ?f2))
			(not (box ?f2))
		)
		:effect
		(and
			(not (agent ?f1))
			(agent ?f2)
		)
	)
	(:action push_on
		:parameters (?f1 ?f2 ?f3)
		:precondition
		(and
			(agent ?f1)
			(box ?f2)
			(not (= ?f1 ?f2))
			(not (= ?f2 ?f3))
			(not (= ?f1 ?f3))
			(or 
				(and (h ?f1 ?f2)(h ?f2 ?f3)(not (h ?f1 ?f3)))
				(and (v ?f1 ?f2)(v ?f2 ?f3)(not (v ?f1 ?f3)))
			)
			(not (box ?f3))
		)
		:effect 
		(and 
			(not (agent ?f1))
			(agent ?f2)
			(not (box ?f2))
			(box ?f3)
		)
	)
)
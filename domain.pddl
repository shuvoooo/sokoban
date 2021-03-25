(define
	(domain sokoban)
	(:requirements :adl)
	(:predicates
		(adjH ?f1 ?f2)
		(adjV ?f1 ?f2)
		(box ?f)
		(circle ?f)
		(agent ?f)
	)
	(:action go
		:parameters (?f1 ?f2)
		:precondition
		(and
			(not (= ?f1 ?f2))
			(agent ?f1)
			(or (adjH ?f1 ?f2)(adjV ?f1 ?f2))
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
				(and (adjH ?f1 ?f2)(adjH ?f2 ?f3)(not (adjH ?f1 ?f3)))
				(and (adjV ?f1 ?f2)(adjV ?f2 ?f3)(not (adjV ?f1 ?f3)))
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
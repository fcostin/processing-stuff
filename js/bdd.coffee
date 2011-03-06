bdd =
	count_solutions : (root, beads, all_counts = false) ->
		"""
		Counts solutions of the BDD represented by beads

		Where beads is a mapping of the form:
		beads : { 0 : [v, lo, hi], ..., root : [v, lo, hi] }

		The variable indices v are assumed to be 0, 1, ...

		The beads with keys 0 and 1 are assumed to be the
		false and true sinks, respectively.
		"""
		c = {}
		c[0] = 0
		c[1] = 1
		for k in [2..root]
			[v, lo, hi] = beads[k]
			v_lo = beads[lo][0]
			v_hi = beads[hi][0]
			solns_lo = c[lo] * Math.pow(2, v_lo - v - 1)
			solns_hi = c[hi] * Math.pow(2, v_hi - v - 1)
			c[k] = solns_lo + solns_hi
		n_solutions = Math.pow(2, beads[root][0]) * c[root]
		if all_counts then [n_solutions, c] else n_solutions
	
	random_solution : (root, beads, c) ->
		x = []
		k = root
		prev_v = -1
		while true
			[v, lo, hi] = beads[k]
			# if any variables are skipped over, assign
			# uniform random bits
			for i in [0...(v - prev_v - 1)]
				x.push(1 * (Math.random() < 0.5))
			# handle sink beads
			if k == lo
				if k == 1
					return x
				else
					throw "bad BDD - no solutions"
			prev_v = v
			# weighted branch on the number of
			# solutions in the sub-graphs
			if (Math.random() * c[k]) < c[hi]
				x.push(1)
				k = hi
			else
				x.push(0)
				k = lo
		throw "something is horribly wrong"

root = exports ? this
root.bdd = bdd

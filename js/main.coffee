enumerate = (a) ->
	([i, a[i]] for i in [0...a.length])

make_cells = (n, passages, edges) ->
	m = 2 * n + 1
	cells = []
	for i in [0...m - 1]
		cells.push [i, 0, 0]
		cells.push [m - 1, i, 0]
		cells.push [m - 1 - i, m - 1, 0]
		cells.push [0, m - 1 - i, 0]
	for i in [0...n]
		for j in [0...n]
			cells.push [2 * i + 1, 2 * j + 1, 1]
	for i in [0...n - 1]
		for j in [0...n - 1]
			cells.push [2 * i + 2, 2 * j + 2, 0]
	for [i, edge] in enumerate(edges)
		[u, v] = passages[i]
		cells.push [u + 1, v + 1, edge]
	cells

coffee_draw = (p5) ->
	p5.setup = () ->
		p5.size(264, 264)
		p5.background(0)
		p5.frameRate(20)

		[n_solns, counts] = bdd.count_solutions(
			root = my_bdd.root,
			beads = my_bdd.beads,
			all_counts = true,
		)
		@counts = counts
		random_solution = bdd.random_solution(
			root = my_bdd.root,
			beads = my_bdd.beads,
			c = @counts
		)
		@cells = make_cells(
			n = my_grid.n,
			passages = my_grid.passages,
			edges = random_solution,
		)
		

	p5.draw = () ->
		if p5.frameCount % 20 == 0
			random_solution = bdd.random_solution(
				root = my_bdd.root,
				beads = my_bdd.beads,
				c = @counts
			)
			@cells = make_cells(
				n = my_grid.n,
				passages = my_grid.passages,
				edges = random_solution,
			)

		draw_cell = ([i, j, x]) ->
			grey = if x then 255 else 50
			p5.fill(grey, grey, grey, 25)
			# alert "draw tile #{i} #{j} #{x}"
			s = 24
			p5.rect(i * s, j * s, s, s)
		
		draw_cell c for c in @cells

$(document).ready ->
	canvas = document.getElementById("processing")
	processing = new Processing(canvas, coffee_draw)

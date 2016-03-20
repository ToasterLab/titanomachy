canvas = document.getElementById "canvas"
if canvas.getContext
		ctx = canvas.getContext "2d"
		
		# draw the red rectangle
		ctx.fillStyle = "rgb(200, 0, 0)"
		ctx.fillRect 50, 50, 150, 150
		
		# draw the blue rectangle
		ctx.fillStyle = "rgba(0, 0, 200, 0.5)"
		ctx.fillRect 100, 100, 150, 150
# establishing a HTML5 Canvas and Context
canvas = document.getElementById("titanomachy")
ctx = canvas.getContext("2d")

# setting up the background image
backgroundReady = false
backgroundImage = new Image()
backgroundImage.onload = () ->
    backgroundReady = true
backgroundImage.src = "images/background.jpg"

# Kronos, the main character
kronos = 
  height:80
  width:40
  x:0
  y:0
  speed:5
kronosReady = false
kronosImage = new Image()
kronosImage.onload = () ->
  kronosReady = true
kronosImage.src = "images/kronos.jpg"

#drawKronos = () ->
#  ctx.fillStyle = "rgba(255,255,255,1)";
#  ctx.fillRect(kronos.x, kronos.y, kronos.width, kronos.height)

# game variables
score = 0

# handling the keyboard
keysDown = []
addEventListener("keydown", (e) ->
  keysDown[e.keyCode] = true
, false)
addEventListener("keyup", (e) ->
  delete keysDown[e.keyCode]
, false)

# update, run on every interval execution indefinitely
update = (interval) ->
  if 37 in keysDown # left key
    kronos.x -= kronos.speed * interval
  if 39 in keysDown # right key
    kronos.x += kronos.speed * interval
    
# render all the things
render = () ->
  if backgroundReady
    ctx.drawImage(backgroundImage, 0, 0)
  if kronosReady
    ctx.drawImage(kronosImage, 0, 0)
  drawKronos()
    
# main game loop
main = () ->
  now = Date.now()
  change = now - previous
  render()
  update(change / 1000)
  previous = now
  requestAnimationFrame(main)

# cross-browser support for requestAnimationFrame
w = window
requestAnimationFrame = w.requestAnimationFrame or w.webkitRequestAnimationFrame or w.msRequestAnimationFrame or w.mozRequestAnimationFrame;

previous = Date.now()
main()
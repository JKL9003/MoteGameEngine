-- This script is meant to be a minimal starting point for new Mote projects.

------------------------------------------------------------------------------
-- constants
------------------------------------------------------------------------------
scale = 2

SCREEN_WIDTH = 128 * scale
SCREEN_HEIGHT = 128 * scale

------------------------------------------------------------------------------
-- required Mote functions
------------------------------------------------------------------------------

-- called once, at the start of the game
function Start()
    CreateWindow(SCREEN_WIDTH, SCREEN_HEIGHT)
    SetWindowTitle("Scrolling Background Demo")
	
	backgroundImage = LoadImage("images/eris_background.png")
	
	x1 = 0
	x2 = 128
	speed = 2
	
end

-- called at a fixed interval (16 ms) to update the state of the game world.
function Update()
	x1 = x1 - speed
	x2 = x2 - speed
	
	if x1 <= -128 then x1 = 128 end
	if x2 <= -128 then x2 = 128 end
	
end

-- called for each new frame drawn to the screen.
function Draw()
	SetDrawScale(scale, scale)
	DrawImage(backgroundImage, x1, 0)
	DrawImage(backgroundImage, x2, 0)
end
-- This script is meant to be a minimal starting point for new Mote projects.

------------------------------------------------------------------------------
-- constants
------------------------------------------------------------------------------

SCREEN_WIDTH = 256
SCREEN_HEIGHT = 256


------------------------------------------------------------------------------
-- required Mote functions
------------------------------------------------------------------------------

-- called once, at the start of the game
function Start()
    CreateWindow(SCREEN_WIDTH, SCREEN_HEIGHT)
    SetWindowTitle("Scoling Background")
	
	backgroundImage = LoadImage("images/eris_background.png")
	
	speed = 2.0
	
	x1 = 0
	
	x2 = 128
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
	SetDrawScale(2,2)
	DrawImage(backgroundImage, x1, 0)
	DrawImage(backgroundImage, x2, 0)
end
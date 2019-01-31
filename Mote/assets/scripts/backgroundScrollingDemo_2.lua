-- This script is meant to be a minimal starting point for new Mote projects.

------------------------------------------------------------------------------
-- constants
------------------------------------------------------------------------------
scale = 3

SCREEN_WIDTH = 272 * scale
SCREEN_HEIGHT = 160 * scale

------------------------------------------------------------------------------
-- required Mote functions
------------------------------------------------------------------------------

-- called once, at the start of the game
function Start()
    CreateWindow(SCREEN_WIDTH, SCREEN_HEIGHT)
    SetWindowTitle("Scrolling Background")
	
	backgroundImage_0 = LoadImage("images/parallaxLayers/parallax-mountain-bg.png")
	backgroundImage_1 = LoadImage("images/parallaxLayers/parallax-mountain-mountain-far.png")
	backgroundImage_2 = LoadImage("images/parallaxLayers/parallax-mountain-mountains.png")
	backgroundImage_3 = LoadImage("images/parallaxLayers/parallax-mountain-trees.png")
	backgroundImage_4 = LoadImage("images/parallaxLayers/parallax-mountain-foreground-trees.png")
	
	I1_x1 = 0
	I1_x2 = 272
	speed_I1 = 1
	
	I2_x1 = 0
	I2_x2 = 544
	speed_I2 = 2
	
	I3_x1 = 0
	I3_x2 = 544
	speed_I3 = 3
	
	I4_x1 = 0
	I4_x2 = 544
	speed_I4 = 4
end

-- called at a fixed interval (16 ms) to update the state of the game world.
function Update()
--image1
	I1_x1 = I1_x1 - speed_I1
	I1_x2 = I1_x2 - speed_I1
	
	if I1_x1 <= -272 then I1_x1 = 272 end
	if I1_x2 <= -272 then I1_x2 = 272 end
	
--image2
	I2_x1 = I2_x1 - speed_I2
	I2_x2 = I2_x2 - speed_I2
	
	if I2_x1 <= -544 then I2_x1 = 544 end
	if I2_x2 <= -544 then I2_x2 = 544 end

--image3

	I3_x1 = I3_x1 - speed_I3
	I3_x2 = I3_x2 - speed_I3
	
	if I3_x1 <= -544 then I3_x1 = 544 end
	if I3_x2 <= -544 then I3_x2 = 544 end

--image4

	I4_x1 = I4_x1 - speed_I4
	I4_x2 = I4_x2 - speed_I4
	
	if I4_x1 <= -544 then I4_x1 = 544 end
	if I4_x2 <= -544 then I4_x2 = 544 end
end

-- called for each new frame drawn to the screen.
function Draw()
	SetDrawScale(scale, scale)
	
	DrawImage(backgroundImage_0, 0, 0)
	
	DrawImage(backgroundImage_1, I1_x1, 0)
	DrawImage(backgroundImage_1, I1_x2, 0)
	
	DrawImage(backgroundImage_2, I2_x1, 0)
	DrawImage(backgroundImage_2, I2_x2, 0)
	
	DrawImage(backgroundImage_3, I3_x1, 0)
	DrawImage(backgroundImage_3, I3_x2, 0)
	
	DrawImage(backgroundImage_4, I4_x1, 0)
	DrawImage(backgroundImage_4, I4_x2, 0)
end
function Start()
    SCREEN_WIDTH = 272
    SCREEN_HEIGHT = 160
    CreateWindow(SCREEN_WIDTH, SCREEN_HEIGHT)
    SetWindowTitle("Basic Walking")
	
	backgroundImage_0 = LoadImage("images/parallaxLayers/parallax-mountain-bg.png")
	backgroundImage_1 = LoadImage("images/parallaxLayers/parallax-mountain-mountain-far.png")
	backgroundImage_2 = LoadImage("images/parallaxLayers/parallax-mountain-mountains.png")
	backgroundImage_3 = LoadImage("images/parallaxLayers/parallax-mountain-trees.png")
	backgroundImage_4 = LoadImage("images/parallaxLayers/parallax-mountain-foreground-trees.png")
	
    ground = {}
    ground.image = LoadImage("images/gme/ground.png")
    ground.width = GetImageWidth(ground.image)
    ground.height = GetImageHeight(ground.image)
    
    player1 = {}
    player1.image = LoadImage("images/gme/player.png")
    player1.width = GetImageWidth(player1.image)
    player1.height = GetImageHeight(player1.image)
    player1.x = SCREEN_WIDTH / 1 - player1.width / 1
    player1.y = SCREEN_HEIGHT - ground.height - player1.height
    player1.speed = 8
	
	player2 = {}
    player2.image = LoadImage("images/gme/player.png")
    player2.width = GetImageWidth(player2.image)
    player2.height = GetImageHeight(player2.image)
    player2.x = SCREEN_WIDTH / 3 - player2.width / 3
    player2.y = SCREEN_HEIGHT - ground.height - player2.height
    player2.speed = 8
	
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

function Update()
    if IsKeyDown(SDL_SCANCODE_LEFT) then
		player1.x = player1.x - player1.speed
    end
	
	if IsKeyDown(SDL_SCANCODE_A) then
		player2.x = player2.x - player2.speed
    end
    
    if IsKeyDown(SDL_SCANCODE_RIGHT) then
		player1.x = player1.x + player1.speed
    end
	
	if IsKeyDown(SDL_SCANCODE_D) then
		player2.x = player2.x + player2.speed
    end
    
    if player1.x < 0 then
		player1.x = 0
    end
	
	if player2.x < 0 then
		player2.x = 0
    end
    
    if player1.x > SCREEN_WIDTH - player1.width then
		player1.x = SCREEN_WIDTH - player1.width
    end
	
	if player2.x > SCREEN_WIDTH - player2.width then
		player2.x = SCREEN_WIDTH - player2.width
    end
	
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

function Draw()
    ClearScreen(68, 136, 204)
    
	DrawImage(backgroundImage_0, 0, 0)
	
	DrawImage(backgroundImage_1, I1_x1, 0)
	DrawImage(backgroundImage_1, I1_x2, 0)
	
	DrawImage(backgroundImage_2, I2_x1, 0)
	DrawImage(backgroundImage_2, I2_x2, 0)
	
	DrawImage(backgroundImage_3, I3_x1, 0)
	DrawImage(backgroundImage_3, I3_x2, 0)
	
	DrawImage(backgroundImage_4, I4_x1, 0)
	DrawImage(backgroundImage_4, I4_x2, 0)
	
    DrawImage(player1.image, player1.x, player1.y)
	
	DrawImage(player2.image, player2.x, player2.y)
	
	local x = 0
    while x < SCREEN_WIDTH do
        DrawImage(ground.image, x, SCREEN_HEIGHT - ground.height)
        x = x + ground.width
    end
end
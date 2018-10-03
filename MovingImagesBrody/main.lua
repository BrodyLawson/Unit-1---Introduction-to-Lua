-- Title: Images and Global Varbles
-- Name: Brody lawson
-- Coures: ICS2O
-- This program displays an image that moves across the screen

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = 5

-- background image with and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 250, 250)

-- set the image to be transparent
beetleship.alpha = 0

-- set the initial x and y position of the beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3
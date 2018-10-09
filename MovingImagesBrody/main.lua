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

-- Function: MoveShip
-- Input: this function accepts
-- Output: none
-- Description: This function adds speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	--change the transparency of the ship every time it moves so that it fades in
	beetleship.alpha = beetleship.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip) 
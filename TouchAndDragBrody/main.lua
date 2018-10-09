-- Title: TouchAndDrag
-- Name: Brody Lawson
-- Course: ICS2O
-- THis Program displays images that react to a perrson's finger.

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local Variables
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local rocketShip = display.newImageRect("Images/rocketship.png", 200, 200 )
local star = display.newImageRect("Images/star.png", 200, 200 ) 

--my boolean variables to keep track of which object i touched first
local alreadyTouchedRocketShip = false
local alreadyTouchedStar = false

-- set the initial x and y position of my image
rocketShip.x = 250
rocketShip.y =150


star.x = 350
star.y = 450

-- Function: RocketShipListener 
-- Input: touch listener
-- Output: none
-- Description: when rocketship is touched, move her
local function RocketShipListener(touch)

   if (touch.phase == "began") then
 	   if (alreadyTouchedRocketShip == false) then
 		alreadyTouchedRocketShip = true 
       end
    end

    if ( (touch.phase == "moved") and (alreadyTouchedRocketShip == true) ) then
    	rocketShip.x = touch.x
    	rocketShip.y = touch.y
    end

    if (touch.phase == "ended") then
        alreadyTouchedRocketShip = false
        alreadyTouchedStar = false
    end
end

local function StarListener(touch)

   if (touch.phase == "began") then
 	   if (alreadyTouchedStar == false) then
 		alreadyTouchedStar = true 
       end
    end

    if ( (touch.phase == "moved") and (alreadyTouchedStar == true) ) then
    	star.x = touch.x
    	star.y = touch.y
    end

    if (touch.phase == "ended") then
        alreadyTouchedStar = false
        alreadyTouchedRocketShip = false
    end
end

-- add the respective listener to each object
rocketShip:addEventListener("touch", RocketShipListener)

star:addEventListener("touch", StarListener)
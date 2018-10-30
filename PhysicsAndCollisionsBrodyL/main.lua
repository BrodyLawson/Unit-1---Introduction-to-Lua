-- Title: Physics and Collisions
-- Name: Brody Lawson
-- Course: ICS2O

-- hide the staus bar
display.setStatusBar(display.HiddenStatusBar)

-- load physics
local physics = require("physics")

-- start physics
physics.start()

---------------------------------------------------------------------------------------------------
-- Objects
---------------------------------------------------------------------------------------------------

-- Ground
local ground = display.newImage("Images/ground.png", 0, 0)

	-- put the ground in the middle of the screen
	ground.width = display.contentWidth*2

	-- put the ground at the bottom fo the screen 
	ground.y = display.contentHeight

	--add to physics
	physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

---------------------------------------------------------------------------------------------------

local beam = display.newImage("Images/beam.png", 0, 0)
	beam.x = display.contentCenterX/5
	beam.y = display.contentCenterY*1.65

	-- set the width
	beam.width = display.contentWidth/2
	beam.height = display.contentHeight/10

	-- rotate the beam -60 degrees so its on an angle
	beam:rotate(45)

	-- send it to the back layer
	beam:toBack()

	-- add to physics
	physics.addBody(beam, "static", {friction=0.5, bounce=0.3})


local beam2 = display.newImage("Images/beam.png", 0, 0)
	beam2.x = display.contentWidth
	beam2.y = display.contentCenterY*1.65

	-- set the width
	beam2.width = display.contentWidth/2
	beam2.height = display.contentHeight/10

	--rotate beam2
	beam2:rotate(135)

	-- send it to the back layer
	beam2:toBack()

	-- add to physics
	physics.addBody(beam2, "static", {friction=0.5, bounce=0.3})

local beam3 = display.newImage("Images/beam.png", 0, 0)
	beam3.x = display.contentWidth
	beam3.y = display.contentCenterY*1.65

	-- set the width
	beam3.width = display.contentWidth/2
	beam3.height = display.contentHeight/10

	--rotate beam2
	beam3:rotate(90)

	-- send it to the back layer
	beam3:toBack()

	-- add to physics
	physics.addBody(beam3, "static", {friction=0.5, bounce=0.3})


-- create the background
local bkg = display.newImage("Images/bkg.png", 0, 0)
	-- set the x and y
	bkg.x = display.contentCenterX
	bkg.y = display.contentCenterY

	-- set the width and height
	bkg.width = display.contentWidth
	bkg.height = display.contentHeight

	-- set to the back
	bkg:toBack()

---------------------------------------------------------------------------------------------------
-- FUNCTIONS
---------------------------------------------------------------------------------------------------

-- create the first ball
local function firstBall()
	-- creating the first ball
	local ball1 = display.newImage("Images/super_ball.png", 0, 0)

	-- add physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.5, radius=25})
end

-- create the first ball
local function secondBall()
	-- creating the first ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- add physics
	physics.addBody(ball2, {density=1.0, friction=0.25, bounce=0.8, radius=12.5})
	ball2:scale(0.5,0.5)
end

-- create the first ball
local function thirdBall()
	-- creating the first ball
	local ball3 = display.newImage("Images/super_ball.png", 0, 0)

	-- add physics
	physics.addBody(ball3, {density=1.0, friction=0.7, bounce=0.15, radius=50})
	ball3:scale(2,2)
end



---------------------------------------------------------------------------------------------------
-- Timer delays
---------------------------------------------------------------------------------------------------
timer.performWithDelay ( 0, firstBall)
timer.performWithDelay ( 500, secondBall)
timer.performWithDelay ( 1000, thirdBall)
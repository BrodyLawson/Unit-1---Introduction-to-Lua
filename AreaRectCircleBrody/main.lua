-- Title AreaRectCircle
-- Name: Brody Lawson
-- Course: ICS2O
-- This program display a rectangle and shows its area

-- create my local variables

local textSize = 45

local myRectangle
local widthOfRectangle = 450
local heightOfRectangle = 300
local areaOfRectangle
local areaTextRect

local myCircle
local radiasOfCircle = 75
local areaOfCircle
local areaTextCircle
local pi = 3.14

-- set the background color of my sreen.Remember that colors are between 0 and 1.
display.setDefault("background", 35/255, 196/255, 180/255)

--to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw my rectangle that is half the width and height of thye screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

-- anchor the rectangle in the top lert corner of the screen and set its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

-- set the width of the border
myRectangle.strokeWidth = 10

-- set the color of the rectangle
myRectangle:setFillColor(0.08, 0.007, 0.7)

-- set color of the border
myRectangle:setStrokeColor(1, 0.98, 0)

-- calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle
areaOfCircle = pi * radiasOfCircle * radiasOfCircle

-- write the area on the sreen. take into consideration the size of the front when positioning it on the screen 
areaTextRect = display.newText("The area of the rectangle with a width of \n" ..
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
	areaOfRectangle .. " pixels².", 0, 0, Arial, textSize)

-- write the area on the sreen. take into consideration the size of the front when positioning it on the screen 
areaTextCircle = display.newText("The area of the circle with a radias of \n" ..
	radiasOfCircle .. " is " ..
	areaOfCircle .. " pixels².", 0, 0, Arial, textSize)


-- anchor the text and set its (x,y) position
areaTextCircle.anchorX = 0
areaTextCircle.anchorY = 0
areaTextCircle.x = 45
areaTextCircle.y = 550

-- draw new circle
myCircle = display.newCircle(852, 140, radiasOfCircle)

-- set the width of the border
myCircle.strokeWidth = 10

-- set the color of the circle
myCircle:setFillColor(0.08, 0.007, 0.7)

-- set color of the border
myCircle:setStrokeColor(1, 0.98, 0)

areaTextRect.anchorX = 0
areaTextRect.anchorY = 0
areaTextRect.x = 45
areaTextRect.y = display.contentHeight/2
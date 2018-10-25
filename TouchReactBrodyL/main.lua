-- Title: Touch and React
-- Name: Brody Lawson
-- Course: ICS2O
-- This program does something when I click on the button.

-- Set the background Colour
display.setDefault ("background", 222/255, 22/255, 22/255)

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- create blue button, set its position and make it Visible
local blueButton = display.newImageRect("Images/Fast Button@2x.png", 250, 148)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true
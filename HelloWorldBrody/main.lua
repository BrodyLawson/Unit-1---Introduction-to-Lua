-- Name: Brody Lawson
-- Course: ICS2O
-- This Program displays Hello, World on the iPad simulator and "Hello!" to the command
-- terminal.
-----------------------------------------------------------------------------------------

-- print "Hello, World" to the command terminal
print ("***Hello, Brody")

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 181/255, 11/255, 11/255)

-- create a local variable
local textObject

--SOUND

--background sound
local backgroundSound = audio.loadSound("Sounds/HelloWorldSound.mp3")
local backgroundSoundChannel

backgroundSoundChannel = audio.play(backgroundSound)

-- displays text on the screen at positon x = 440 and y = 335 with
-- a deafult font style and font size of 100
 textObject = display.newText( "Hello, Ms Raffin!", 440, 355, nil, 100 )

-- sets the colour of the text
textObject:setTextColor ( 0, 0, 0)

-- create a local variable
local textObjectSignature

-- displays text on the screen at positon x = 440 and y = 335 with
-- a deafult font style and font size of 100
 textObjectSignature = display.newText( "By: Brody Lawson", 540, 455, nil, 95 )

-- sets the colour of the text
textObjectSignature:setTextColor ( 0, 0, 255/255)
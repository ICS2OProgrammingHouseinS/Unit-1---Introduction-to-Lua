-----------------------------------------------------------------------------------------
-- Name: Housein Shaib
-- Course: ICS20
-- This program displays "Hello, Housein!" on the ipad air simulator and "How are you?" to
-- the command terminal
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
-- SOUNDS
-----------------------------------------------------------------------------------------
local backgroundMusic = audio.loadSound("Sounds/bensound-epic.mp3")
local backgroundMusicChannel

	function BackgroundMusic()
		backgroundMusicChannel = audio.play(backgroundMusic)
		timer.peformWithDelay(BackgroundMusic, 177000)
	end
	
-- Print "How are you?" to the command terminal
print ("How are you?")

-- Print "This is awsome!" to the command
print ("this is awsome")
-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Sets the backround colour
display.setDefault("background", 124/255, 249/255, 250/255)

-- Creates a local variable
local textObject
local textObjectSignature

-- Displays text on the screen at position x = 500 and y = 500 with
-- A defult font style and font size of 50
textObject = display.newText("Hello, Housein!", 540, 360, nil, 75)

--Sets the colour of the text
textObject:setTextColor(0/255, 0/255, 0/255)

-- Displays "By: Housin S."
textObjectSignature = display.newText("By: Housein S.", 600, 500, nil, 50)

-- Sets text colour
textObjectSignature:setTextColor(0/255, 0/255, 255/255)
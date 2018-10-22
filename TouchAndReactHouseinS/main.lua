-----------------------------------------------------------------------------------------
-- Title: TouchAndReact
-- Name: Housein Shaib
-- Course: ICS2O
-- This program displays a blue button when clicked displays a red button and an image.
-----------------------------------------------------------------------------------------

-- Set background colour
display.setDefault("background", 255/255, 60/255, 50/255)

-- Hides the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Creates blue button, sets it's position and, makes it visable.
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- Creates red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

-- Creates text object, set it's position and make it invisable
local textObject = display.newText("PINGU RULES ALL", 0, 0, nil, 67)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor(0, 1, 1)
textObject.isVisible = false

-- Creates pingu image, sets it's position and make it invisable
local pingu = display.newImageRect("Images/Pingu.png", 396, 396)
pingu.x = 500
pingu.y = 600
pingu.isVisible = false

-----------------------------------------------------------------------------------------
-- SOUNDS
-----------------------------------------------------------------------------------------
local buttonSound = audio.loadSound("Sounds/SpringSoundEffect.mp3")
local buttonSoundChannel

-- Function: BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: When blue button is clicked, it will make the text appear with the red button
-- and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
		pingu.isVisible = true
		buttonSoundChannel = audio.play(buttonSound)
	end

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
		pingu.isVisible = false
	end

end

-- Function: RedButtonListener
-- Input: touch listener
-- Output: none
-- Description: When red button is clicked, it will make the blue button disappear, the red button appear
-- with the text
local function RedButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
		pingu.isVisible = true
	end

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
		pingu.isVisible = false
	end
end

-- Add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)
redButton:addEventListener("touch", RedButtonListener)
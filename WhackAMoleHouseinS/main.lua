-----------------------------------------------------------------------------------------
-- Title: WhackAMole
-- Name: Housein Shaib
-- Course: ICS2O
-- This program is like the very popular game Whack a Mole
-----------------------------------------------------------------------------------------

-- Hides the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Creating background
display.setDefault("background", 100/255, 20/255, 255/255)

-- Creating mole
local mole = display.newImage("Images/mole.png", 0, 0)

-- Setting position of mole
mole.x = display.contentCenterX
mole.y = display.contentCenterY

-- Scale down mole
mole.xScale = mole.xScale/3
mole.yScale = mole.yScale/3

-- Makes the mole invisible
mole.isVisible = false

-- Creates score varibles
local score = 0
local scoreCounter = ("Correct: " .. score)
scoreCounter = display.newText("", 200, 100, nil, 75)
scoreCounter:setTextColor(10/255, 30/255, 50/255)

-----------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------

-- This function makes the mole appear in a random(x,y) position
-- on the screen before calling the function
local function PopUp()
	-- Choosing random position on the screen
	mole.x = math.random(0, display.contentWidth)
	mole.y = math.random(0, display.contentHeight)

	-- Makes the mole visible
	mole.isVisible = true

	-- Calls hide function
	timer.performWithDelay(500, Hide)
end

-- This function calls the PopUp function after 3 seconds
local function PopUpDelay()
	timer.performWithDelay(3000, PopUp)
end
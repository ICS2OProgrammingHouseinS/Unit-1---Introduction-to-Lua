-----------------------------------------------------------------------------------------
-- Title: TouchAndDrag
-- Name: Housein Shaib
-- Course: ICS2O
-- This program displays 2 images that can be clicke and draged
-----------------------------------------------------------------------------------------

-- Hides the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Local variables
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

local planet = display.newImageRect("Images/planet.png", 250, 250)
local planetWidth = planet.Width
local planetHeight = planet.Height

local rocketship = display.newImageRect("Images/rocketship.png", 150, 150)
local rocketshipWidth = rocketship.width
local rocketshipHeight = rocketship.height

-- My boolean variables keep track of which object I touched first
local alreadyTouchedPlanet = false
local alreadyTouchedRocketship = false

-- Set the x and y position of the images
planet.x = 400
planet.y = 500

rocketship.x = 300
rocketship.y = 200

-- Function: RocketshipListener
-- Input: Touch listener
-- Output: None
-- Description: When Rocket is touched, it can be dragged
local function RocketshipListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedPlanet == false) then
			alreadyTouchedRocketship = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedRocketship == true) ) then
		rocketship.x = touch.x
		rocketship.y = touch.y
	end

	if (touch.phase  == "ended") then
	   alreadyTouchedRocketship = false
	   alreadyTouchedPlanet = false
	end
end

-- Function: PlanetListener
-- Input: Touch listener
-- Output: None
-- Description: When Planet is touched, it can be dragged
local function PlanetListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedRocketship == false) then
			alreadyTouchedPlanet = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedPlanet == true) ) then
		planet.x = touch.x
		planet.y = touch.y
	end

	if (touch.phase  == "ended") then
	   alreadyTouchedPlanet = false
	   alreadyTouchedRocketship = false
	end
end

-- Add the respective listeners to each object
rocketship:addEventListener("touch", RocketshipListener)
planet:addEventListener("touch", PlanetListener)
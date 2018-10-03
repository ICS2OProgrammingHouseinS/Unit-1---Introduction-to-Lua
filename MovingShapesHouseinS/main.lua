-----------------------------------------------------------------------------------------
-- Title: Moving Images
-- Name: Housein Shaib
-- Course: ICS2O
-- This program displays an image that moves across the screen
-----------------------------------------------------------------------------------------

-- Hides the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Global variables
scrollSpeedBeetle = 3
scrollSpeedPlanet = 4

-- Backgrond images with width and height
local backgroundImage = display.newImageRect("background.png", 2048, 1536)

-- Character image with width and height
local beetleship = display.newImageRect("beetleship.png", 200, 200)
local planet = display.newImageRect("planet.png", 250, 250)

-- Sets the image to be transparent
beetleship.alpha = 0
planet.alpha = 1

-- Set the initial x and y position of beetleship and planet
beetleship.x = 0
beetleship.y = display.contentHeight/3
planet.x = display.contentWidth
planet.y = 0

-- Function: Move beetleship
-- Input: This function accepts an event listener
-- Output: None
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveBeetleship(event)
	-- Adds the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeedBeetle
	-- Change the transparency of the ship every time it moves
	beetleship.alpha = beetleship.alpha + 0.01
end

-- Function: Move planet
-- Input: This function accepts an event listener
-- Output: None
-- Description: This function subtracts the scroll speed to the x-value and y-value of the planet
local function MovePlanet(event)
	-- Adds the scroll speed to the x-value and y-value of the planet
	planet.x = planet.x - scrollSpeedPlanet
	planet.y = planet.y + scrollSpeedPlanet
	-- Changes the x-scale the of the planet
	planet.xScale = planet.xScale - 0.01
	-- Change the transparency of the ship every time it moves
	planet.alpha = planet.alpha - 0.0001
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveBeetleship)
Runtime:addEventListener("enterFrame", MovePlanet)
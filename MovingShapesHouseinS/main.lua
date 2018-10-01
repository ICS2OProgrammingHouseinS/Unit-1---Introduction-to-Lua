-----------------------------------------------------------------------------------------
-- Title: Moving Images
-- Name: Housein Shaib
-- Course: ICS2O
-- This program displays an image that moves across the screen
-----------------------------------------------------------------------------------------

-- Hides the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Global variables
scrollSpeed = 3

-- Backgrond images with width and height
local backgroundImage = display.newImageRect("background.png", 2048, 1536)

-- Character image with width and height
local beetleship = display.newImageRect("beetleship.png", 200, 200)

-- Sets the image to be transparent
beetleship.alpha = 0

-- Set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: Move ship
-- Input: This function accepts an event listener
-- Output: None
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- Adds the scroll speed to the x-value of the ship
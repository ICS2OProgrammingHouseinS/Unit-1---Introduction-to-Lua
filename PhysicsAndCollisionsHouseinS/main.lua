-----------------------------------------------------------------------------------------
-- Title: PhysicsAndCollisions
-- Name: Housein Shaib
-- Course: ICS2O
-- This program displays balls of different sizes and densities that roll down a beam on to the floor.
-----------------------------------------------------------------------------------------

-- Hides the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Load physics
local physics = require("physics")

-- Start physics
physics.start()

-----------------------------------------------------------------------------------------
-- OBJECTS
-----------------------------------------------------------------------------------------

-- Ground
local ground = display.newImage("Images/ground.png", 0, 0)
-- Change the x/y value of ground
ground.x = display.contentCenterX
ground.y = display.contentHeight
-- Change the width to be the same as the screen
ground.width = display.contentWidth

-- Add to physics
physics.addBody(ground, "static", {friction=0.5, bounce=0.3})
-----------------------------------------------------------------------------------------
-- Beam
local beam = display.newImage("Images/beam_long.png", 0, 0)
-- Set the x/y value of beam
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65
-- Set the width/height
beam.width = display.contentWidth/2
beam.height = display.contentHeight/10
-- Rotates the beam 45 degrees
beam:rotate(45)
-- Sends the beam to back layer
beam:toBack()

-- Add to physics
physics.addBody(beam, "static", {friction=0.5, bounce=0.3})
-----------------------------------------------------------------------------------------
-- Create bkg
local bkg = display.newImage("Images/bkg.png", 0, 0)

-- Set the x/y position
bkg.x = display.contentCenterX
bkg.y = display.contentCenterY
-- Set the width/height
bkg.width = display.contentWidth
bkg.height = display.contentHeight
-- Send to back
bkg:toBack()

-----------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------

-- Create the first ball
local function FirstBall()
	local ball1 = display.newImage("Images/super_ball.png", 0, 0)

	-- Add to physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})
end

-----------------------------------------------------------------------------------------

local function SecondBall()
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- Add to physics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.3, radius=12.5})

	ball2.xScale = 0.5
	ball2.yScale = 0.5
end

-----------------------------------------------------------------------------------------
-- TIMER DELAYS
-----------------------------------------------------------------------------------------
timer.performWithDelay(0, FirstBall)
timer.performWithDelay(500, SecondBall)
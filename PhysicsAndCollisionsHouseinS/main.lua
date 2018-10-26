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
-- SOUNDS
-----------------------------------------------------------------------------------------
local backgroundMusic = audio.loadSound("Sounds/bensound-dubstep.mp3")
local backgroundMusicChannel = audio.play(backgroundMusic)

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
-- Beam2
local beam2 = display.newImage("Images/beam_long.png", 0, 0)
-- Set the x/y value of beam
beam2.x = display.contentWidth-150
beam2.y = display.contentCenterY*1.65
-- Set the width/height
beam2.width = display.contentWidth/2
beam2.height = display.contentHeight/10
-- Rotates the beam 45 degrees
beam2:rotate(-45)
-- Sends the beam to back layer
beam2:toBack()

-- Add to physics
physics.addBody(beam2, "static", {friction=0.5, bounce=0.3})
-----------------------------------------------------------------------------------------
-- Beam3
local beam3 = display.newImage("Images/beam_long.png", 0, 0)
-- Set the x/y value of beam
beam3.x = display.contentCenterX
beam3.y = -50
-- Set the width/height
beam3.width = display.contentWidth
beam3.height = display.contentHeight/10
-- Sends the beam to back layer
beam3:toBack()

-- Add to physics
physics.addBody(beam3, "static", {friction=0.5, bounce=0.3})
-----------------------------------------------------------------------------------------
-- Beam4
local beam4 = display.newImage("Images/beam_long.png", 0, 0)
-- Set the x/y value of beam
beam4.x = display.contentWidth + 50
beam4.y = display.contentCenterY
-- Set the width/height
beam4.width = display.contentWidth
beam4.height = display.contentHeight/10
-- Rotates the beam 90 degrees
beam4:rotate(90)
-- Sends the beam to back layer
beam4:toBack()

-- Add to physics
physics.addBody(beam4, "static", {friction=0.5, bounce=0.3})
-----------------------------------------------------------------------------------------
-- Beam5
local beam5 = display.newImage("Images/beam_long.png", 0, 0)
-- Set the x/y value of beam
beam5.x = -50
beam5.y = display.contentCenterY
-- Set the width/height
beam5.width = display.contentWidth
beam5.height = display.contentHeight/10
-- Rotates the beam 90 degrees
beam5:rotate(90)
-- Sends the beam to back layer
beam5:toBack()

-- Add to physics
physics.addBody(beam5, "static", {friction=0.5, bounce=0.3})
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
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=1.3, radius=25})
end

-----------------------------------------------------------------------------------------

local function SecondBall()
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- Changes x/y scale
	ball2.xScale = 0.5
	ball2.yScale = 0.5

		-- Add to physics
	physics.addBody(ball2, {density=5.0, friction=0.5, bounce=1.8, radius=12.5})
end
-----------------------------------------------------------------------------------------
-- Create the third ball
local function ThirdBall()
	local ball3 = display.newImage("Images/super_ball.png", 0, 0)

	-- Changes x/y scale
	ball3.xScale = 2
	ball3.yScale = 2

		-- Add to physics
	physics.addBody(ball3, {density=1.0, friction=1.5, bounce=0.8, radius=50})
end
-----------------------------------------------------------------------------------------
-- Create the fourth ball
local function FourthBall()
	local ball4 = display.newImage("Images/super_ball.png", 0, 0)

	-- Changes x/y scale
	ball4.xScale = 3
	ball4.yScale = 3

		-- Add to physics
	physics.addBody(ball4, {density=1.0, friction=0.5, bounce=0.8, radius=75})
end
-----------------------------------------------------------------------------------------
-- Create the Fifth ball
local function FifthBall()
	local ball5 = display.newImage("Images/super_ball.png", 0, 0)

	-- Changes x/y value
	ball5.x = 1000

	-- Changes x/y scale
	ball5.xScale = 3
	ball5.yScale = 3

		-- Add to physics
	physics.addBody(ball5, {density=1.0, friction=0.5, bounce=0.8, radius=75})
end
-----------------------------------------------------------------------------------------
-- TIMER DELAYS
-----------------------------------------------------------------------------------------
timer.performWithDelay(0, FirstBall)
timer.performWithDelay(500, SecondBall)
timer.performWithDelay(0, ThirdBall)
timer.performWithDelay(10000, FourthBall)
timer.performWithDelay(100, FifthBall)
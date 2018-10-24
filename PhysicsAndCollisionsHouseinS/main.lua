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
-- Set width/height
beam.width = display.contentWidth/2
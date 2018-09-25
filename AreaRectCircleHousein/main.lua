-----------------------------------------------------------------------------------------
-- Title: AreaRectCircle
-- Name:Housein Shaib
-- Course: ICS2O/3C
--this programdisplays a rectangle and shows it's area
-----------------------------------------------------------------------------------------

-- Create my local variables
local areaTextRect
local textsizeRect = 55
local myRectangle
local widthOfRectangle = 500
local heightOfRectangle = 400
local areaOfRectangle
local areaTextCircle = 55
local textsizeCircle = 40
local myCircle
local radiusOfCircle = 200
local areaOfCircle
local PI = 3.14
-- Set the background colour of my screen.
display.setDefault("background", 50/255, 70/255, 175/255)

-- To remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- Draw the rectangle that is half the width and height of screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

-- Anchor the rectangle in the top left cornor of the screen and set it's (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 30
myRectangle.y = 30

-- Set the width of the border
myRectangle.strokeWidth = 30

-- Set the colour of the rectangle
myRectangle:setFillColor(100/255, 20/255, 50/255)

-- set the colour of the bordor
myRectangle:setStrokeColor(0, 1, 0)

-- Calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

-- Write the area on the screen.
areaTextRect = display.newText("The area of this rectangle with a width of \n" ..
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
	areaOfRectangle .. " pixels²", 500, 500, nil, 50)
areaTextRect:setTextColor(100/255, 0/255, 75/255)

-- Displays a circle
myCircle = display.newCircle(775, 220,  radiusOfCircle)

-- Set width of border
myCircle.strokeWidth = 35

-- Set colour of circle
myCircle:setFillColor(100/255, 20/255, 100/255)

-- Set border colour
myCircle:setStrokeColor(1, 0, 1)

-- Calculate the area
areaOfCircle = radiusOfCircle * PI

-- Write the area on screen
areaTextCircle = display.newText("The are of this circle with a radius of \n" .. 
	radiusOfCircle .. " is " .. areaOfCircle .. " pixels²", 500, 650, nil, 50)
areaTextCircle:setFillColor(200/255, 70/255, 80/255)
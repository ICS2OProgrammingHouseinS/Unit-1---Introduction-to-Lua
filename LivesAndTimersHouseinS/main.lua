-----------------------------------------------------------------------------------------
-- Title: LivesAndTimers
-- Name: Housein Shaib
-- Course: ICS2O
-- This program Displays two hearts. If the user gets the question wrong or if the time runs out
-- they lose a life. If the user loses three times it displays a game over screen
-----------------------------------------------------------------------------------------

-- Hides the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Varibles for the timer
local totalSeconds = 6
local secondsLeft = 6
local clockText
local countDownTimer

local lives = 1
local heart1
local heart2

-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------

local function UpdateTime()

	-- Decrement the number of seconds
	secondsLeft = secondsLeft - 1

	-- Display the number of seconds left in the clock object
	clockText.text = secondsLeft .. ""

	if (secondsLeft == 0) then
		-- Reset the number of seconds left
		secondsLeft = totalSeconds
		lives = lives - 1

		if (lives == 2) then
			heart2.isVisible = false
		elseif (lives == 1) then
			heart1.isVisible = false
			
		end
	end
end

-- Function that calls the timer
local function StartTimer()
	-- Create a countdown timer that loops infinitely
	countDownTimer = timer.performWithDelay(1000, UpdateTime, 0)
end

-----------------------------------------------------------------------------------------
-- OBJECT CREATION
-----------------------------------------------------------------------------------------

-- Create the lives to display on the screen
heart2 = display.newImageRect("Images/heart.png", 100, 100)
heart2.x = display.contentWidth * 7 / 8
heart2.y = display.contentHeight * 1 / 7

heart1 = display.newImageRect("Images/heart.png", 100, 100)
heart1.x = display.contentWidth * 6 / 8
heart1.y = display.contentHeight * 1 / 7

clockText = display.newText("", 100, 100, nil, 50)
clockText:setTextColor(255/255, 255/255, 255/255)

-----------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------
StartTimer()
UpdateTime()
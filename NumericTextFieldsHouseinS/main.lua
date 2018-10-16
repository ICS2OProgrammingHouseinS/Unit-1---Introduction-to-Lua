-----------------------------------------------------------------------------------------
-- Title: NumericTextFields
-- Name: Housein Shaib
-- Course: ICS2O
-- This program displays a numeric text field where the user can enter their answer for a
-- addition, subtraction, or multiplication math question
-----------------------------------------------------------------------------------------

-- Hides the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Sets the background colour
display.setDefault("background", 0/255, 220/255, 200/255)

-----------------------------------------------------------------------------------------
-- LOCAL VARIBLES
-----------------------------------------------------------------------------------------

-- Create local varibles
local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer

-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------

local function AskQuestion()
	-- Generate 2 random numbers between a max and a min number
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)

	correctAnswer = randomNumber1 + randomNumber2

	-- Create question in text object
	questionObject.text = randomNumber1 .. "+" .. randomNumber2 .. "="
end

local function HideCorrect()
	correctObject.isVisable = false
	AskQuestion()
end

local function NumericFieldListener(event)

	-- User begins editing "numericField"
	if (event.phase == "began") then

		-- Clear text field
		event.target.text = ""

	elseif event.phase == "submitted" then

			-- When answer is submitted (enter key is presed) set user input to user's answer
			userAnswer = tonumber(event.target.text)

			-- If the user's answer and the correct answer are the same:
			if (userAnswer == correctAnswer) then
				correctObject.isVisable = true
				timer.performWithDelay(2000, HideCorrect)
			end
	end
end

-----------------------------------------------------------------------------------------
-- OBJECT CREATION
-----------------------------------------------------------------------------------------

-- Displays a question and sets the colour
questionObject = display.newText("", display.contentWidth/3, display.contentHeight/2, nil, 50)
questionObject:setTextColor(155/255, 42/255, 198/255)

-- Create the correct text object and make it invisible
correctObject = display.newText("Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
correctObject:setTextColor(15/255, 100/255, 0/255)
correctObject.isVisible = false

-- Create numeric field
numericField = native.newTextField(display.contentWidth/2)
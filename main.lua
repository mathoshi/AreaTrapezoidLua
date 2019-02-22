-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Matsuru Hoshi
-- Created on Feb 20 2019
--
-- This file will calcualte the area of a trapezoid
-----------------------------------------------------------------------------------------

-- 


local AreOfTrapezoid =
{
	text = "Very Sketchy Area of a Trapezoid Calculator",
	x = 160,
	y = 50,
	width = 200,
	font = native.systemFont,
	fontSize = 20,
	align = "center"
}

local myText = display.newText( AreOfTrapezoid )
myText:setFillColor( 244/255, 66/255, 245/255 )

local Trapezoid = display.newImageRect( "Assets/trapezoid.png", 100, 100)
Trapezoid.x = 160
Trapezoid.y = 130
Trapezoid.id = "Trapezoid"

local SideAText = native.newTextField( 160, 410, 200, 25 )
SideAText.id = "SideAText"

local SideBText = native.newTextField( 160, 380, 200, 25 )
SideBText.id = "SideBText"

local SideHText = native.newTextField( 160, 440, 200, 25 )
SideHText.id = "SideH"

local AreaTrapezoidAnswerText = native.newTextField( 160, 480, 200, 25 )
SideHText.id = "SideH"

local CalculateButton = display.newImageRect( "Assets/calculate-button.png", 200, 200)
CalculateButton.x = 160
CalculateButton.y = 300

local function Calculator ( event )
	-- body
	local SideA
	local SideB
	local SideH

	SideA = SideAText.text
	SideB = SideBText.text
	SideH = SideHText.text
	AreaTrapexoidAnswer = ((SideA + SideB)/2) * SideH

	AreaTrapezoidAnswerText.text = "The area is " .. AreaTrapexoidAnswer
	return true
end

CalculateButton:addEventListener( "touch", Calculator )
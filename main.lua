-----------------------------------------------------------------------------------------
--
-- main.lua
--
--Created by Ethan Bellem
--Created on March 2018
-----------------------------------------------------------------------------------------

--Will set up gui

display.setDefault( "background", 1, 1, 1 )

local answerOne

local answerTwo

local button = display.newImageRect( "./assets/sprite/enterButton.png", 500, 300)
button.x = 1000
button.y = 1000

local textboxone = native.newTextField( 1000, 350, 350, 150)

local textboxtwo = native.newTextField( 1000, 650, 350, 150)

local directions = display.newText( "Where are you going today", display.contentCenterX, 100, native.systemFont, 120)
directions:setTextColor( 0, 0, 0)

local directionsTwo = display.newText( "Enter Day of the Week", 400, 650, native.systemFont, 75)
directionsTwo:setTextColor( 0, 0, 0)

local directionsThree = display.newText( "Enter your Age", 400, 350, native.systemFont, 75)
directionsThree:setTextColor( 0, 0, 0)

local function onButtonPressed( event )
	-- will define sum variables
	local answerOne = tonumber(textboxone.text)
	local answerTwo = (textboxtwo.text)
	--print(answerOne)
	--print(answerTwo)
	if answerTwo == "sunday" or answerTwo == "Sunday" or answerTwo == "Saturday" or answerTwo == "saturday" then
		--print("hello")
		textboxone.isVisible = false
		textboxtwo.isVisible = false
		button.isVisible = false
		directionsTwo.isVisible = false
		directionsThree.isVisible = false
		local noSchool = display.newText( "Stay home and relax", display.contentCenterX,display.contentCenterY, native.systemFont, 75)
		noSchool:setTextColor( 0, 0, 0)
	elseif answerOne >= 18 then



		local work = display.newText( "Go to Work", display.contentCenterX,display.contentCenterY, native.systemFont, 75)
		work:setTextColor( 0, 0, 0)
		textboxone.isVisible = false
		textboxtwo.isVisible = false
		button.isVisible = false
		directionsTwo.isVisible = false
		directionsThree.isVisible = false
	else
		local school = display.newText( "Go to School", display.contentCenterX,display.contentCenterY, native.systemFont, 75)
		school:setTextColor( 0, 0, 0)
		textboxone.isVisible = false
		textboxtwo.isVisible = false
		button.isVisible = false
		directionsTwo.isVisible = false
		directionsThree.isVisible = false



	end	

end


button:addEventListener( "touch", onButtonPressed)
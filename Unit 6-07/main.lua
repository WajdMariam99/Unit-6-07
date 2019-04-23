-----------------------------------------------------------------------------------------
--
-- Created By: Wajd Mariam
-- Created On: April 23, 2019
-----------------------------------------------------------------------------------------

local EnterButton = display.newImageRect ("assets/sprites/enterbutton.png" , 175, 75)
EnterButton.x = 160
EnterButton.y = 350
EnterButton.id = "Enter Button"


GuessedNumberField = native.newTextField( display.contentCenterX, display.contentCenterY + 0, 225, 40 )
GuessedNumberField.id = "Answer textField"


local ResponseText = display.newText ( "Can you guess my age? " , 160 , 130, native.systemFont, 20)
ResponseText: setFillColor ( 255,255,255 )


local function EnterButtonTouch( event )


AgeToGuess = 15
NumberGuessed = tonumber (GuessedNumberField.text)


if NumberGuessed > AgeToGuess then
	ResponseText.text = " I'm younger than this age "

elseif NumberGuessed < AgeToGuess then
	ResponseText.text = " I'm older than this age "

else
	ResponseText.text = "You guseed my age right!"


end

end

EnterButton:addEventListener ( "touch" , EnterButtonTouch )  
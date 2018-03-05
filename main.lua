-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: March 5
--
-- This programs display a moving image.
-----------------------------------------------------------------------------------------

-- Hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- Speed
local movingSpeed = 3

-- Background Image with width and height
local backgroundImage = display.newImageRect('Assets/Textures/background.png', 2048, 1536)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.id = 'The background'

-- The image that moves
local movingObject = display.newImageRect('Assets/Sprites/theRobot.png', 300, 300)
movingObject.x = 0
movingObject.y = display.contentHeight - 200
movingObject.id = 'The robot'

-- Movement function 
local function motionFunction(event)
	movingObject.x = movingObject.x + movingSpeed
	print(display.fps)
end 

Runtime:addEventListener('enterFrame', motionFunction)
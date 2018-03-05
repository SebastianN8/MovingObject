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
local movingSpeed = 3^1.5

-- Background Image with width and height
local backgroundImage = display.newImageRect('Assets/Textures/background.png', 2048, 1536)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.id = 'The background'

-- The image that moves (#1)
local movingObject = display.newImageRect('Assets/Sprites/theRobot.png', 300, 300)
movingObject.x = 0
movingObject.y = display.contentHeight - 200
movingObject.id = 'The robot'
movingObject.alpha = 1

-- The second object that moves(#2)
local movingObjectTwo = display.newImageRect('Assets/Sprites/theRobot.png', 300, 300)
movingObjectTwo.x = 2048
movingObjectTwo.y = 0
movingObjectTwo.id = 'The second'
movingObjectTwo.alpha = 1
-- Movement function 
local function motionFunction(event)
	-- Controlling robot #1
	movingObject.x = movingObject.x + movingSpeed
	movingObject.y = movingObject.y - (movingSpeed - 2)
	movingObject.alpha = movingObject.alpha - 0.0000000000000001
	-- Controlling robot #2
	movingObjectTwo.x = movingObjectTwo.x - movingSpeed
	movingObjectTwo.y = movingObjectTwo.y + movingSpeed
	print(display.fps)
end 

Runtime:addEventListener('enterFrame', motionFunction)
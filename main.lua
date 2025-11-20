love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )
bg = {}
paused = "no"

love.graphics.setColor(0,1,0,1)
socket = require'socket'

function ft_cube(x, y, z)
  -- DRAW A NEW 10X10 CUBE EVERY ONE SECOND
  function love.draw(dt)
    for i=0, z, 1 do x = x
      love.graphics.rectangle("fill",                   x, y, 10,10)
      function love.keypressed(key)
        if key == 'space' then
          if paused == 'no' then
            x = 0
          paused = "yes"
        else
          paused = 'no'
          z = 1
        end
        end
        if key == 'a' then
          ft_cube(1,0,0)
        end

      end
      -- HANDLE KEYBOARD -> INCREASE, DECREASE.
      if love.keyboard.isDown('right') then
        x = x + 5
      end
      if love.keyboard.isDown('left') then
        x = x - 5
      end
      if love.keyboard.isDown('up') then
        y = y - 5
      end
      if love.keyboard.isDown('down') then
        y = y + 5
      end
      function love.mousepressed()
      print("click")
        x = love.mouse.getX()
        y = love.mouse.getY()
      end
    end
    love.graphics.print("Press SPACE",                    bg.bx*2, bg.by*90,r,2,2)
    love.graphics.print("Press A",                        bg.bx*15, bg.by*80,r,2,2)
    love.graphics.print("Press LEFT RIGHT",               bg.bx*30, bg.by*85,r,2,2)
    love.graphics.print("x " .. x .. " bg.x " .. bg.x,    bg.bx*45, bg.by*90,r,2,2)
    love.graphics.print("y " .. y .. " bg.y " .. bg.y,    bg.bx*60, bg.by*85,r,2,2)
  end
  function love.update()
    bg.x = love.graphics.getWidth()
    bg.y = love.graphics.getHeight()
    bg.bx = love.graphics.getWidth()/100
    bg.by = love.graphics.getHeight()/100
  
  if x>bg.x then
    x = 0
  elseif x<0 then
  x = bg.x
  end
  
  end
end
--

a = ft_cube(1, 1, 2)

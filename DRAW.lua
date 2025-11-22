love.window.setMode( 1280, 720, {fullscreen = false, vsync = true, resizable = true } )

-- DRAW A NEW 10X10 CUBE EVERY ONE SECOND
function ft_cube()
  function love.draw(dt) 
    
      -- DRAW DEMO
    if game.state == 'demo' then
      love.graphics.setColor(0,1,1,1)
      love.graphics.print("CUBE THE GAME",                bg.bx*40,  50,r,3,3)
      love.graphics.rectangle("line", player.x, player.y, bg.bx, bg.bx)
      love.graphics.print("Press SPACE",                  bg.bx*40,  bg.y/2,r,3,3)
      love.graphics.print("Press P",                      bg.bx*40,  bg.y/2+100,r,3,3)
      love.graphics.print("Press LEFT RIGHT",             bg.bx*40, bg.y/2+50,r,3,3)
      function love.keypressed(key)
        if key == 'left' or key == 'right' or key == 'space' or key == 'p' then game.state = 'play'
        end
      end
    end
    
      -- DRAW PLAY
    if game.state == 'play' then
      love.graphics.setColor(0,1,0,1)
      for i = 1, 1, 1 do
        player.y = player.y + game.gravity
      end
      love.graphics.line(map)
      love.graphics.circle('line', bg.bx*90, 75, 20)
      love.graphics.circle('line', bg.bx*90, 75, 15)
        love.graphics.rectangle("line", player.x, player.y, bg.bx, bg.bx)
        love.graphics.print("Horloge : " .. game.time, bg.bx*5, bg.by*5,r,2,2)
        love.graphics.print("SCORE : " .. math.floor(player.score), player.x-90, player.y,r,1,1)
        love.graphics.print("BOOST : " .. math.floor(player.boost), player.x+30, player.y,r,1,1)

    end
      
      -- DRAW PAUSE
    if game.state == 'pause' then
      love.graphics.rectangle("line", player.x, player.y, 10, 10)
      love.graphics.print("CUBE THE GAME", bg.bx*40, bg.by*20,r,3,3)
      love.graphics.print("GAME PAUSED", bg.bx*40, bg.by*40,r,3,3)
      love.graphics.print("SCORE : " .. math.floor(player.score), bg.bx*2, bg.by*3,r,3,3)
      love.graphics.print("Horloge : " .. game.time, bg.bx*2, bg.by*90,r,3,3)
    end
  end
end
--

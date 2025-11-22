socket = require'socket'
require'DRAW'
utime = os.time()
-- DECLARE GAME ASSET
game = {}
game.state = 'demo'
game.debug = false
game.time = os.time() - utime
game.gravity = 1

-- DECLARE BG ASSET
bg = {}
bg.x = love.graphics.getWidth()
bg.y = love.graphics.getHeight()
bg.bx = love.graphics.getWidth()/100
bg.by = love.graphics.getHeight()/100

-- DECLARE PLAYER ASSET
player = {}
player.x = bg.bx*50
player.y = 100
player.boost = 1
player.speed = 5
player.score = 0

function love.update()

  -- VARIABLES
  bg.x = love.graphics.getWidth()
  bg.y = love.graphics.getHeight()
  bg.bx = love.graphics.getWidth()/100
  bg.by = love.graphics.getHeight()/100

  player.boost = 1000 / (player.y / 2)

  game.time = os.time() - utime
  game.gravity = 1000 / player.y

  if game.state == 'play' then
    -- HANDLE KEYBOARD -> INCREASE, DECREASE.
    if love.keyboard.isDown('right') then player.x = player.x + player.speed 
    end
    if love.keyboard.isDown('left') then player.x = player.x - player.speed 
    end
    if love.keyboard.isDown('up') then player.y = player.y - player.speed 
    end
    if love.keyboard.isDown('down') then player.y = player.y + player.speed 
    end
    if player.x > bg.x then player.x = 0 elseif player.x < 0 then player.x = bg.x 
    end
    if player.y+30+bg.by*2 > bg.y then player.y = bg.y-30-bg.by*2
    end
    if player.y < 0 then player.y = bg.y-100
    end

    function love.keypressed(key)
      if key == 'space' then
        player.score = player.score + player.boost
        player.y = player.y - 20
      end

      if key == 'escape' then
        love.event.quit('quit')
      end

    if key == 'p' then
        game.state = 'pause'
        player.tempSpeed = player.speed
        game.tempGravity = game.gravity
        player.speed = 0
        love.graphics.setColor(1,1,0)
      end
    end
  end
    
    if game.state == 'pause' then
      function love.keypressed(key)
        if key == 'p' then
          if game.state == 'pause' then
            player.speed = player.tempSpeed
            game.gravity = game.tempGravity
            game.state = 'play'
          end
        end
      end
    end
  --

  map={
    0, bg.by * 98, 
    bg.bx * 3, bg.by * 95, 
    bg.bx * 6, bg.by * 98, 
    bg.bx * 9, bg.by * 95, 
    bg.bx * 12, bg.by * 98, 
    bg.bx * 15, bg.by * 95, 
    bg.bx * 18, bg.by * 98, 
    bg.bx * 21, bg.by * 95, 
    bg.bx * 24, bg.by * 98, 
    bg.bx * 27, bg.by * 95, 
    bg.bx * 30, bg.by * 98, 
    bg.bx * 33, bg.by * 95, 
    bg.bx * 36, bg.by * 98, 
    bg.bx * 39, bg.by * 95, 
    bg.bx * 42, bg.by * 98, 
    bg.bx * 45, bg.by * 95, 
    bg.bx * 48, bg.by * 98, 
    bg.bx * 51, bg.by * 95, 
    bg.bx * 54, bg.by * 98, 
    bg.bx * 57, bg.by * 95, 
    bg.bx * 60, bg.by * 98, 
    bg.bx * 63, bg.by * 95, 
    bg.bx * 66, bg.by * 98, 
    bg.bx * 69, bg.by * 95, 
    bg.bx * 72, bg.by * 98, 
    bg.bx * 75, bg.by * 95, 
    bg.bx * 78, bg.by * 98, 
    bg.bx * 81, bg.by * 95, 
    bg.bx * 84, bg.by * 98, 
    bg.bx * 87, bg.by * 95, 
    bg.bx * 90, bg.by * 98, 
    bg.bx * 93, bg.by * 95, 
    bg.bx * 96, bg.by * 98, 
    bg.bx * 99, bg.by * 95
  }

end
--
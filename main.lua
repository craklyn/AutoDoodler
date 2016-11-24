local socket = require("socket")

function love.load()
--  texas = love.graphics.newImage("texas-outline.png")
  texas = love.graphics.newImage("cactus-transparent.png")
  texasX = 100
  texasY = 100
  texasR = 0
  texasSx = 1.0
  texasSy = 1.0
  dt = love.timer.getDelta

  if not love.filesystem.exists("expo.png") then
    local http = require("socket.http")

    local b, c, h = http.request("http://love2d.org/w/images/e/e3/Resource-AnalExplosion.png")
    love.filesystem.write("expo.png", b)
  end
--  texas = love.graphics.newImage("expo.png")

end

function love.update(dt)
  texasX = texasX + dt*2.5
  texasY = texasY + dt+0.8
  texasR = texasR - dt*0.1
  texasSx = texasSx * (1 - dt*0.1)
  texasSy = texasSy * (1 - dt*0.1)
end


function love.draw()
  love.graphics.print('Hello World!', 400, 300)
--    love.graphics.draw( drawable, x, y, r, sx, sy, ox, oy, kx, ky )
  love.graphics.draw( texas, 500, 500, 0, 0, 0, 0, 0, 0, 0 )
  love.graphics.draw(texas, texasX, texasY, texasR, texasSx, texasSy)
end


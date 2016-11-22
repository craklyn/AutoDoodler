function love.load()
  texas = love.graphics.newImage("texas-outline.png")
end


function love.draw()
  love.graphics.print('Hello World!', 400, 300)
--    love.graphics.draw( drawable, x, y, r, sx, sy, ox, oy, kx, ky )
  love.graphics.draw( texas, 500, 500, 0, 0, 0, 0, 0, 0, 0 )
  love.graphics.draw(texas, 100, 100)
end


flash = 0  display = true  function load()  big = love.graphics.newFont(love.default_font, 24)  small = love.graphics.newFont(love.default_font, 12)  love.graphics.setBackgroundColor(0, 138, 255)  moose = love.graphics.newImage(love.default_moose)  logo = love.graphics.newImage(love.default_logo_256) end r = 0  function update(dt)  r = r + dt  flash = flash + dt  if flash > 0.8 then flash = 0; display = not display; end  end  function draw()  love.graphics.setFont(small)  love.graphics.draw(logo, 400, 280)  love.graphics.draw(moose, 400, 380 + math.sin(r)*10)  love.graphics.drawf("0.2.1\nImpending Doom", 480, 560, 300, love.align_right)  love.graphics.setFont(big)  if display then love.graphics.drawf("No Game", 300, 500, 200, love.align_center) end end
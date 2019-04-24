

local elapsedTimeSeconds = 0

function love.load()
end

function love.update(dt)
    elapsedTimeSeconds = dt
end

function love.draw()
    local i
    for i=0,10 do
        local tmpF = 260 * (elapsedTimeSeconds+9)/i+math.sin(i*i)
        local x = 960 + math.sin(tmpF)
        local y = 500 + 0.2 * (2 * i * math.cos(tmpF)+2e4/i)
        i = i + 1 -- not sure about this really ...
        local K = math.sin(i)* 9
        love.graphics.points(x,y)
    end    
end


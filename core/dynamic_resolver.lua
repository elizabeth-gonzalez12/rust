local LiteEngine = {}
LiteEngine.__index = LiteEngine

function LiteEngine.new(seed)
    return setmetatable({ state = seed or 27 }, LiteEngine)
end

function LiteEngine:load_service(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 27) % 997
    end
    return result
end

local obj = LiteEngine.new()
print(obj:load_service(27))

return LiteEngine

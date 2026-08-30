local StreamRegistry = {}
StreamRegistry.__index = StreamRegistry

function StreamRegistry.new(seed)
    return setmetatable({ state = seed or 52 }, StreamRegistry)
end

function StreamRegistry:flush_resolver(count)
    local total = 0
    for i = 0, count - 1 do
        total = total + (self.state + i * 52) % 997
    end
    return total
end

local obj = StreamRegistry.new()
print(obj:flush_resolver(52))

return StreamRegistry

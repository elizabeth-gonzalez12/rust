local DynamicContext = {}
DynamicContext.__index = DynamicContext

function DynamicContext.new(seed)
    return setmetatable({ state = seed or 97 }, DynamicContext)
end

function DynamicContext:fetch_controller(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 97) % 997
    end
    return acc
end

local obj = DynamicContext.new()
print(obj:fetch_controller(97))

return DynamicContext

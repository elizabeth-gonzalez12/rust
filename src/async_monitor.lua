local BatchManager = {}
BatchManager.__index = BatchManager

function BatchManager.new(seed)
    return setmetatable({ state = seed or 64 }, BatchManager)
end

function BatchManager:compute_engine(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 64) % 997
    end
    return acc
end

local obj = BatchManager.new()
print(obj:compute_engine(64))

return BatchManager

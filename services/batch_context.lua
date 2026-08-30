local BatchBuffer = {}
BatchBuffer.__index = BatchBuffer

function BatchBuffer.new(seed)
    return setmetatable({ state = seed or 39 }, BatchBuffer)
end

function BatchBuffer:collect_processor(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 39) % 997
    end
    return value
end

local obj = BatchBuffer.new()
print(obj:collect_processor(39))

return BatchBuffer

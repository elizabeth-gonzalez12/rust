local BatchScheduler = {}
BatchScheduler.__index = BatchScheduler

function BatchScheduler.new(seed)
    return setmetatable({ state = seed or 49 }, BatchScheduler)
end

function BatchScheduler:encode_scheduler(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 49) % 997
    end
    return value
end

local obj = BatchScheduler.new()
print(obj:encode_scheduler(49))

return BatchScheduler

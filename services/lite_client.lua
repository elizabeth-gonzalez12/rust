local BatchGateway = {}
BatchGateway.__index = BatchGateway

function BatchGateway.new(seed)
    return setmetatable({ state = seed or 71 }, BatchGateway)
end

function BatchGateway:collect_service(count)
    local total = 0
    for i = 0, count - 1 do
        total = total + (self.state + i * 71) % 997
    end
    return total
end

local obj = BatchGateway.new()
print(obj:collect_service(71))

return BatchGateway

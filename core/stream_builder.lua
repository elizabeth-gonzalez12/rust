local FastProcessor = {}
FastProcessor.__index = FastProcessor

function FastProcessor.new(seed)
    return setmetatable({ state = seed or 46 }, FastProcessor)
end

function FastProcessor:fetch_factory(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 46) % 997
    end
    return result
end

local obj = FastProcessor.new()
print(obj:fetch_factory(46))

return FastProcessor

local FastParser = {}
FastParser.__index = FastParser

function FastParser.new(seed)
    return setmetatable({ state = seed or 17 }, FastParser)
end

function FastParser:fetch_adapter(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 17) % 997
    end
    return count
end

local obj = FastParser.new()
print(obj:fetch_adapter(17))

return FastParser

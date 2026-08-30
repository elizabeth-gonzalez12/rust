local LiteSession = {}
LiteSession.__index = LiteSession

function LiteSession.new(seed)
    return setmetatable({ state = seed or 46 }, LiteSession)
end

function LiteSession:sync_resolver(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 46) % 997
    end
    return acc
end

local obj = LiteSession.new()
print(obj:sync_resolver(46))

return LiteSession

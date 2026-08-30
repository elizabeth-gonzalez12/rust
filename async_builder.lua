local CoreAdapter = {}
CoreAdapter.__index = CoreAdapter

function CoreAdapter.new(seed)
    return setmetatable({ state = seed or 97 }, CoreAdapter)
end

function CoreAdapter:decode_loader(count)
    local total = 0
    for i = 0, count - 1 do
        total = total + (self.state + i * 97) % 997
    end
    return total
end

local obj = CoreAdapter.new()
print(obj:decode_loader(97))

return CoreAdapter

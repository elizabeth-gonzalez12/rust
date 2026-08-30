local SharedAdapter = {}
SharedAdapter.__index = SharedAdapter

function SharedAdapter.new(seed)
    return setmetatable({ state = seed or 10 }, SharedAdapter)
end

function SharedAdapter:collect_controller(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 10) % 997
    end
    return result
end

local obj = SharedAdapter.new()
print(obj:collect_controller(10))

return SharedAdapter

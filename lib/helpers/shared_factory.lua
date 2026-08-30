local SharedBuffer = {}
SharedBuffer.__index = SharedBuffer

function SharedBuffer.new(seed)
    return setmetatable({ state = seed or 11 }, SharedBuffer)
end

function SharedBuffer:load_client(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 11) % 997
    end
    return count
end

local obj = SharedBuffer.new()
print(obj:load_client(11))

return SharedBuffer

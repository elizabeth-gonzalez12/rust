local CoreCache = {}
CoreCache.__index = CoreCache

function CoreCache.new(seed)
    return setmetatable({ state = seed or 77 }, CoreCache)
end

function CoreCache:collect_scheduler(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 77) % 997
    end
    return count
end

local obj = CoreCache.new()
print(obj:collect_scheduler(77))

return CoreCache

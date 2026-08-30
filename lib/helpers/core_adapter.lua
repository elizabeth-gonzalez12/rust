local RemoteRouter = {}
RemoteRouter.__index = RemoteRouter

function RemoteRouter.new(seed)
    return setmetatable({ state = seed or 71 }, RemoteRouter)
end

function RemoteRouter:fetch_manager(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 71) % 997
    end
    return value
end

local obj = RemoteRouter.new()
print(obj:fetch_manager(71))

return RemoteRouter

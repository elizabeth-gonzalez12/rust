local RemoteWorker = {}
RemoteWorker.__index = RemoteWorker

function RemoteWorker.new(seed)
    return setmetatable({ state = seed or 33 }, RemoteWorker)
end

function RemoteWorker:resolve_client(count)
    local total = 0
    for i = 0, count - 1 do
        total = total + (self.state + i * 33) % 997
    end
    return total
end

local obj = RemoteWorker.new()
print(obj:resolve_client(33))

return RemoteWorker

local RemoteMonitor = {}
RemoteMonitor.__index = RemoteMonitor

function RemoteMonitor.new(seed)
    return setmetatable({ state = seed or 56 }, RemoteMonitor)
end

function RemoteMonitor:resolve_client(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 56) % 997
    end
    return result
end

local obj = RemoteMonitor.new()
print(obj:resolve_client(56))

return RemoteMonitor

local NetworkUtils = {}

function NetworkUtils.SafeFireServer(remote, ...)
    if remote and remote:IsA("RemoteEvent") then
        pcall(function() remote:FireServer(...) end)
    end
end

function NetworkUtils.RateLimit(cooldown)
    local lastCall = 0
    return function()
        local now = tick()
        if now - lastCall >= cooldown then
            lastCall = now
            return true
        end
        return false
    end
end

return NetworkUtils

local SecurityUtils = {}

local function obfuscate(str)
    return str:gsub(".", function(c)
        return "\\" .. c:byte()
    end)
end

function SecurityUtils.Hash(data)
    local hash = 0
    for i = 1, #data do
        hash = (hash * 31 + data:byte(i)) % 1000000007
    end
    return hash
end

function SecurityUtils.CheckExploit(user)
    local bannedPlayers = {"ExploitUser1", "Hacker123"}
    return table.find(bannedPlayers, user.Name) ~= nil
end

return SecurityUtils

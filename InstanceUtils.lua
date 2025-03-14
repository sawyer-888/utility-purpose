local InstanceUtils = {}

function InstanceUtils.SafeClone(obj)
    local success, clone = pcall(function() return obj:Clone() end)
    return success and clone or nil
end

function InstanceUtils.RecursiveDestroy(obj)
    for _, child in ipairs(obj:GetChildren()) do
        InstanceUtils.RecursiveDestroy(child)
    end
    obj:Destroy()
end

return InstanceUtils

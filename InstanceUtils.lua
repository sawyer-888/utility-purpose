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

function InstanceUtils.FindDescendantByName(root, name)
    for _, child in ipairs(root:GetDescendants()) do
        if child.Name == name then return child end
    end
    return nil
end

return InstanceUtils

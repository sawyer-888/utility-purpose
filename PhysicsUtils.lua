local PhysicsUtils = {}

function PhysicsUtils.ApplyImpulse(obj, force)
    if obj:IsA("BasePart") then
        obj:ApplyImpulse(force)
    end
end

function PhysicsUtils.CreateExplosion(position, radius, damage)
    local explosion = Instance.new("Explosion")
    explosion.Position = position
    explosion.BlastRadius = radius
    explosion.BlastPressure = damage
    explosion.Parent = workspace
end

function PhysicsUtils.CreateForceField(part, duration)
    local ff = Instance.new("ForceField", part)
    task.delay(duration, function()
        if ff then ff:Destroy() end
    end)
end

return PhysicsUtils

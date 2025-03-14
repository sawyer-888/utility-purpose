local AIUtils = {}

function AIUtils.SimpleFollow(npc, target, speed)
    while task.wait(0.1) do
        if npc and target then
            npc.Humanoid:MoveTo(target.Position)
        end
    end
end

function AIUtils.Patrol(npc, waypoints, speed)
    while true do
        for _, point in ipairs(waypoints) do
            npc.Humanoid:MoveTo(point.Position)
            npc.Humanoid.MoveToFinished:Wait()
        end
    end
end

function AIUtils.AvoidObstacles(npc, range)
    local rayParams = RaycastParams.new()
    rayParams.FilterDescendantsInstances = {npc}
    rayParams.FilterType = Enum.RaycastFilterType.Blacklist
    
    while task.wait(0.1) do
        local ray = workspace:Raycast(npc.Position, Vector3.new(range, 0, 0), rayParams)
        if ray then
            npc.Humanoid:Move(Vector3.new(-ray.Normal.X, 0, -ray.Normal.Z))
        end
    end
end

return AIUtils

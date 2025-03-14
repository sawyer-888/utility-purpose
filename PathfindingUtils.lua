local PathfindingUtils = {}

function PathfindingUtils.CreatePath(start, goal)
    local pathfindingService = game:GetService("PathfindingService")
    local path = pathfindingService:CreatePath()
    path:ComputeAsync(start.Position, goal.Position)
    return path
end

function PathfindingUtils.MoveToGoal(character, goal)
    local path = PathfindingUtils.CreatePath(character.PrimaryPart, goal)
    local waypoints = path:GetWaypoints()
    for _, waypoint in ipairs(waypoints) do
        character:MoveTo(waypoint.Position)
        character.Humanoid.MoveToFinished:Wait()
    end
end

return PathfindingUtils

local VectorUtils = {}

function VectorUtils.RotateVector(vec, axis, angle)
    local q = CFrame.fromAxisAngle(axis, math.rad(angle))
    return (q * vec) - q.Position
end

function VectorUtils.AngleBetween(v1, v2)
    return math.deg(math.acos(v1.Unit:Dot(v2.Unit)))
end

function VectorUtils.ProjectOntoPlane(v, normal)
    return v - normal * v:Dot(normal)
end

return VectorUtils

local MathUtils = {}

function MathUtils.Lerp(a, b, t)
    return a + (b - a) * math.clamp(t, 0, 1)
end

function MathUtils.BezierCurve(p0, p1, p2, t)
    local u = 1 - t
    return u^2 * p0 + 2 * u * t * p1 + t^2 * p2
end

return MathUtils

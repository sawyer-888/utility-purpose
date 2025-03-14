local MathUtils = {}

function MathUtils.Lerp(a, b, t)
    return a + (b - a) * math.clamp(t, 0, 1)
end

function MathUtils.BezierCurve(p0, p1, p2, t)
    local u = 1 - t
    return u^2 * p0 + 2 * u * t * p1 + t^2 * p2
end

function MathUtils.MovingAverage(values, windowSize)
    local sum, count = 0, math.min(#values, windowSize)
    for i = #values - count + 1, #values do sum = sum + values[i] end
    return sum / count
end

return MathUtils

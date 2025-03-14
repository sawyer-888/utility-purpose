local DebugUtils = {}

function DebugUtils.LogTable(tbl, indent)
    indent = indent or 0
    for k, v in pairs(tbl) do
        local formatting = string.rep("  ", indent) .. tostring(k) .. ": "
        if typeof(v) == "table" then
            print(formatting)
            DebugUtils.LogTable(v, indent + 1)
        else
            print(formatting .. tostring(v))
        end
    end
end

function DebugUtils.MeasureExecutionTime(func, ...)
    local startTime = tick()
    local results = {func(...)}
    local duration = tick() - startTime
    print("Execution Time:", duration, "seconds")
    return unpack(results)
end

return DebugUtils

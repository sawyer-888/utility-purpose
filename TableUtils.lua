local TableUtils = {}

function TableUtils.DeepCopy(original)
    local copy = {}
    for k, v in pairs(original) do
        copy[k] = typeof(v) == "table" and TableUtils.DeepCopy(v) or v
    end
    return copy
end

function TableUtils.Shuffle(tbl)
    for i = #tbl, 2, -1 do
        local j = math.random(i)
        tbl[i], tbl[j] = tbl[j], tbl[i]
    end
end

return TableUtils

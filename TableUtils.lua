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

function TableUtils.Merge(t1, t2)
    local merged = TableUtils.DeepCopy(t1)
    for k, v in pairs(t2) do merged[k] = v end
    return merged
end

return TableUtils

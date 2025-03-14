local SerializationUtils = {}

function SerializationUtils.SerializeTable(tbl)
    local str = "{"
    for k, v in pairs(tbl) do
        str = str .. "[" .. tostring(k) .. "]=" .. tostring(v) .. ","
    end
    return str .. "}"
end

function SerializationUtils.DeserializeTable(str)
    return load("return " .. str)()
end

return SerializationUtils

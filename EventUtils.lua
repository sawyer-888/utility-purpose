local EventUtils = {}

function EventUtils.CreateEvent()
    local event = Instance.new("BindableEvent")
    return event
end

function EventUtils.ListenEvent(event, callback)
    event.Event:Connect(callback)
end

return EventUtils

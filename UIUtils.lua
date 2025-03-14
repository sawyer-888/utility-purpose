local UIUtils = {}

function UIUtils.TweenUI(object, targetProps, duration, easingStyle)
    local tweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(duration, easingStyle or Enum.EasingStyle.Quad)
    local tween = tweenService:Create(object, tweenInfo, targetProps)
    tween:Play()
    return tween
end

function UIUtils.CreateTextLabel(text, parent)
    local label = Instance.new("TextLabel")
    label.Text = text
    label.Size = UDim2.new(0, 200, 0, 50)
    label.Parent = parent
    return label
end

return UIUtils

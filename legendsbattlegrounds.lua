local RunService = game:GetService("RunService")

RunService.Heartbeat:Connect(function()
    for _, v in pairs(getgc(true)) do
        if type(v) == "table" then
            if rawget(v, "SideDash") then
                v.SideDash = 0
            end
            if rawget(v, "FrontBackDash") then
                v.FrontBackDash = 0
            end
        end
    end
end)

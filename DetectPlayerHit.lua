
local Players = game:GetService("Players")
local LocalPlr = Players.LocalPlayer
local Character = LocalPlr.Character
local RootPart = Character.HumanoidRootPart

for _,damageEvent in pairs(Players:GetPlayers()) do

    damageEvent.Character.Humanoid.HealthChanged:Connect(function()
        if damageEvent.Name ~= LocalPlr.Name and damageEvent.Character.Humanoid.Health >= 1 then

            if (damageEvent.Character.HumanoidRootPart.Position - RootPart.Position).magnitude <= 25 then
                print(damageEvent.Name)
            end
            
        end
    end)

end

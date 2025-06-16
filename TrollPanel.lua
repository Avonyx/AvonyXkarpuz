-- AvonyxKarpuz Troll Panel V1
local plr = game.Players.LocalPlayer
plr.Name = "AvonyxKarpuzHup"

print("🌈 AvonyxKarpuz Troll Panel Aktif!")

-- Basit GUI Panel
local ScreenGui = Instance.new("ScreenGui", plr.PlayerGui)
ScreenGui.Name = "AvonyxTrollPanel"

local Frame = Instance.new("Frame", ScreenGui)
Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 255) -- rainbow pembe mor başlangıç
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)

local TextLabel = Instance.new("TextLabel", Frame)
TextLabel.Size = UDim2.new(1, 0, 0.3, 0)
TextLabel.Text = "🌈 Avonyx Troll Panel"
TextLabel.TextColor3 = Color3.new(1,1,1)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.TextScaled = true

local KillAll = Instance.new("TextButton", Frame)
KillAll.Size = UDim2.new(1, 0, 0.35, 0)
KillAll.Position = UDim2.new(0, 0, 0.35, 0)
KillAll.Text = "💥 Herkesi Öldür"
KillAll.BackgroundColor3 = Color3.fromRGB(255,100,100)
KillAll.TextScaled = true
KillAll.MouseButton1Click:Connect(function()
    for _,v in pairs(game.Players:GetPlayers()) do
        if v ~= plr and v.Character and v.Character:FindFirstChild("Humanoid") then
            v.Character.Humanoid.Health = 0
        end
    end
end)

local SoundButton = Instance.new("TextButton", Frame)
SoundButton.Size = UDim2.new(1, 0, 0.35, 0)
SoundButton.Position = UDim2.new(0, 0, 0.7, 0)
SoundButton.Text = "🔊 Troll Ses Yay"
SoundButton.BackgroundColor3 = Color3.fromRGB(100,100,255)
SoundButton.TextScaled = true
SoundButton.MouseButton1Click:Connect(function()
    local s = Instance.new("Sound", workspace)
    s.SoundId = "rbxassetid://142376088" -- troll scream ses
    s.Volume = 10
    s:Play()
end)

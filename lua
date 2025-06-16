local player = game.Players.LocalPlayer
player.DisplayName = "AvonyxkarpuzHup"
local char = player.Character or player.CharacterAdded:Wait()
local human = char:WaitForChild("Humanoid")

-- Rainbow DisplayName
spawn(function()
    while true do
        for i = 0, 1, 0.01 do
            local r = math.floor(i * 255)
            local g = math.floor((1 - i) * 255)
            local b = 255
            player.DisplayName = ("<font color='rgb("..r..","..g..","..b..")'>AvonyxkarpuzHup</font>")
            wait(0.1)
        end
    end
end)

-- GUI + rainbow arka plan
local gui = Instance.new("ScreenGui", player.PlayerGui)
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 260, 0, 470)
frame.Position = UDim2.new(0, 30, 0, 100)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Active = true
frame.Draggable = true

-- AK Logo + başlık
local logo = Instance.new("TextLabel", frame)
logo.Size = UDim2.new(1, 0, 0, 40)
logo.Text = "🔥 AK | AvonyxKarpuz TROLL PANEL 🔥"
logo.Font = Enum.Font.SourceSansBold
logo.TextSize = 20
logo.TextColor3 = Color3.fromRGB(255, 255, 255)
logo.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

spawn(function()
    while true do
        for i = 0, 1, 0.01 do
            frame.BackgroundColor3 = Color3.fromHSV(i,1,1)
            logo.TextColor3 = Color3.fromHSV((i+0.5)%1,1,1)
            wait(0.1)
        end
    end
end)

local function buton(text, y, func)
    local btn = Instance.new("TextButton", frame)
    btn.Size = UDim2.new(1, -10, 0, 30)
    btn.Position = UDim2.new(0, 5, 0, y)
    btn.Text = text
    btn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Font = Enum.Font.SourceSans
    btn.TextSize = 16
    btn.MouseButton1Click:Connect(func)
end

local noclip = false
buton("Noclip Aç/Kapat", 50, function()
    noclip = not noclip
end)

game:GetService("RunService").Stepped:Connect(function()
    if noclip and char then
        for _, v in pairs(char:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end
end)

buton("Hız 100", 90, function() human.WalkSpeed = 100 end)
buton("Hız Normal", 130, function() human.WalkSpeed = 16 end)
buton("Zıplama 150", 170, function() human.JumpPower = 150 end)
buton("Zıplama Normal", 210, function() human.JumpPower = 50 end)

buton("Araçları Uçur", 250, function()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("VehicleSeat") then
            v.Velocity = Vector3.new(0, 500, 0)
        end
    end
end)

buton("Ban Kaldır", 290, function()
    player.Character:MoveTo(Vector3.new(0, 10, 0))
    wait(0.5)
    player.Character:BreakJoints()
end)

buton("Troll Ses Çal", 330, function()
    local s = Instance.new("Sound", workspace)
    s.SoundId = "rbxassetid://12222225"
    s.Volume = 10
    s:Play()
end)

buton("Herkesi Öldür", 370, function()
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= player and p.Character and p.Character:FindFirstChild("Humanoid") then
            p.Character.Humanoid.Health = 0
        end
    end
end)

buton("Jumpscare", 410, function()
    local js = Instance.new("Sound", workspace)
    js.SoundId = "rbxassetid://5410086218"
    js.Volume = 10
    js:Play()
end)

local discord = Instance.new("TextLabel", frame)
discord.Size = UDim2.new(1, -10, 0, 30)
discord.Position = UDim2.new(0, 5, 0, 450)
discord.Text = "discord.gg/avonyxkarpuz"
discord.TextColor3 = Color3.fromRGB(255, 255, 255)
discord.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
discord.Font = Enum.Font.SourceSans
discord.TextSize = 14

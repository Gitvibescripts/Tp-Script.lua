local Players = game:GetService("Players")
local lp = Players.LocalPlayer

local gui = Instance.new("ScreenGui", game.CoreGui)

-- Toggle Button
local toggle = Instance.new("TextButton", gui)
toggle.Size, toggle.Position = UDim2.new(0, 120, 0, 40), UDim2.new(0, 10, 0, 10)
toggle.BackgroundColor3, toggle.Text = Color3.fromRGB(50, 50, 50), "Toggle Menu"
toggle.TextColor3, toggle.TextScaled, toggle.Font = Color3.new(1, 1, 1), true, Enum.Font.SourceSans

-- Menu
local menu = Instance.new("Frame", gui)
menu.Size, menu.Position = UDim2.new(0, 300, 0, 200), UDim2.new(0, 10, 0, 60)
menu.BackgroundColor3, menu.BackgroundTransparency, menu.Active, menu.Draggable = Color3.fromRGB(0, 0, 0), 0.5, true, true
menu.BorderSizePixel, menu.ClipsDescendants = 0, true
local corner = Instance.new("UICorner", menu) corner.CornerRadius = UDim.new(0, 10)

-- Creator Text
local creator = Instance.new("TextLabel", menu)
creator.Size, creator.Text = UDim2.new(1, 0, 0, 30), "by king_baconROYALTY"
creator.TextColor3, creator.TextScaled, creator.Font = Color3.new(1, 1, 1), true, Enum.Font.SourceSans
creator.BackgroundTransparency = 1

-- Username Input
local input = Instance.new("TextBox", menu)
input.Size, input.Position, input.PlaceholderText = UDim2.new(0.7, -10, 0, 40), UDim2.new(0, 10, 0, 50), "Username"
input.BackgroundColor3, input.BackgroundTransparency, input.TextScaled, input.Font = Color3.fromRGB(50, 50, 50), 0.2, true, Enum.Font.SourceSans
input.TextColor3 = Color3.new(0.8, 0.8, 0.8)
local inputCorner = Instance.new("UICorner", input) inputCorner.CornerRadius = UDim.new(0, 10)

-- TP Button
local tp = Instance.new("TextButton", menu)
tp.Size, tp.Position, tp.Text = UDim2.new(0.25, 0, 0, 40), UDim2.new(0.75, 10, 0, 50), "TP"
tp.BackgroundColor3, tp.TextColor3, tp.TextScaled, tp.Font = Color3.fromRGB(70, 70, 70), Color3.new(1, 1, 1), true, Enum.Font.SourceSans
local tpCorner = Instance.new("UICorner", tp) tpCorner.CornerRadius = UDim.new(0, 10)
tp.MouseButton1Click:Connect(function()
    local target = Players:FindFirstChild(input.Text)
    if target and target.Character and lp.Character then
        lp.Character:MoveTo(target.Character.HumanoidRootPart.Position)
    end
end)

-- Info Text
local info = Instance.new("TextLabel", menu)
info.Size, info.Position, info.Text = UDim2.new(1, 0, 0, 30), UDim2.new(0, 0, 1, -30), "MJ IS COOL"
info.TextColor3, info.TextScaled, info.Font = Color3.new(0, 1, 1), true, Enum.Font.SourceSans
info.BackgroundTransparency = 1

-- Toggle Menu Visibility
toggle.MouseButton1Click:Connect(function()
    menu.Visible = not menu.Visible
end)

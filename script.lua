-- Meu Hub Lua - exemplo original
-- Use como LocalScript dentro do seu próprio jogo

local Players = game:GetService("Players")
local player = Players.LocalPlayer

print("================================")
print("Meu Hub Lua iniciado!")
print("Jogador: " .. player.Name)
print("================================")

-- Cria uma interface simples
local gui = Instance.new("ScreenGui")
gui.Name = "MeuHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(300, 180)
frame.Position = UDim2.new(0.5, -150, 0.5, -90)
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.Text = "MEU HUB"
title.TextScaled = true
title.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.fromOffset(240, 50)
button.Position = UDim2.new(0.5, -120, 0, 70)
button.Text = "Olá!"
button.TextScaled = true
button.Parent = frame

button.MouseButton1Click:Connect(function()
    button.Text = "Funcionou!"
    print("Botão clicado por " .. player.Name)
end)

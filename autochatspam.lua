--// Credits \\--
--[[ Ezpi#0474 - Creator of this script ]]--

--// Services \\--
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")

--// Variables \\--
local Player = Players.LocalPlayer
local Enabled = false
local Mouse = Player:GetMouse()
local X, Y = 0, 0
local LastC = Color3.new(1, 0, 0)
local LastU = tick()

--// Exploit Fix \\--
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = CoreGui
    end
end

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://pastebin.com/raw/edJT9EGX'))()
local Window = Library:CreateWindow("Chat Spammer (Skeidox)")
Enabled_1 = Window:AddColor({
    text = 'Status:',
    flag = "Ezpi_1",
    color = Color3.new(1, 0, 0),
    callback = function(A_1)
        -- "Enabled" Color
        local NewColor = Color3.new(0, 1, 0)
        if Enabled == false then
            NewColor = Color3.new(1, 0, 0)
        end
        if NewColor ~= Last or A_1 ~= NewColor then
            Last = NewColor
            Enabled_1:SetColor(NewColor)
        end
    end
})
Window:AddBind({
    text = 'Toggle',
    callback = function()
        -- Toggle
        Enabled = not Enabled
        -- "Enabled" Color
        local NewColor = Color3.new(0, 1, 0)
        if Enabled == false then
            NewColor = Color3.new(1, 0, 0)
        end
        if NewColor ~= Last then
            Last = NewColor
            Enabled_1:SetColor(NewColor)
        end
        -- Click Position

        -- AutoClick
        while Enabled do
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("meow!!", "All")
            wait(2)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("woof!!", "All")
            wait(2)
        end
    end
})


Library:Init()

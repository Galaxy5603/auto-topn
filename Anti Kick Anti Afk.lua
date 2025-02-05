local function callback(Text)
    if Text == "Join Server ! " then
        print("Join Server button clicked!")

        -- Check if setclipboard is available in your environment (note: this won't work in standard Roblox)
        if setclipboard then
            setclipboard("https://discord.gg/PsqbvYPzfr")
        end

        -- Send another notification to inform the player
        game.StarterGui:SetCore("SendNotification", {
            Title = "Discord Server";
            Icon = "rbxassetid://78551511760951"; -- Ensure this asset ID is va
            Text = "Copied Server to Clipboard.";
            Duration = 5; -- Duration for this notification
        })
        
    elseif Text == "Button2 text" then
        print("Answer2")
    end
end

local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback

game.StarterGui:SetCore("SendNotification",  {
Title = "Anti Kick";
Text = "Version 2.8.6";
TextColor3 = Color3.new(0.000000, 0.000000, 0.000000); -- rgb(255, 0, 0) normalized
Icon = "rbxassetid://78551511760951"; -- Ensure this asset ID is valid
Duration = 86400;
Button1 = "Join Server !";
Callback = NotificationBindable;
})

game.StarterGui:SetCore("SendNotification",  {
Title = "Anti Afk";
Text = "Version 2.1.2"
TextColor3 = Color3.new(0.000000, 0.000000, 0.000000); -- rgb(255, 0, 0) normalized
Icon = "rbxassetid://78551511760951"; -- Ensure this asset ID is valid
Duration = 86400;
Callback = NotificationBindable;
})


game:WaitForChild("CoreGui")
game.CoreGui:WaitForChild("RobloxPromptGui")
game.CoreGui.RobloxPromptGui:WaitForChild("promptOverlay")
_G.xd = true 
while _G.xd do wait()
if game:GetService("CoreGui").RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") then 
game:GetService("TeleportService"):Teleport(3565304751, LocalPlayer)
end
end

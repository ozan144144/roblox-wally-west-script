local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")

local normalSpeed = 16
local fastSpeed = 32

UIS.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	
	if input.KeyCode == Enum.KeyCode.LeftShift then
		local char = player.Character or player.CharacterAdded:Wait()
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		
		if humanoid then
			humanoid.WalkSpeed = fastSpeed
		end
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		local char = player.Character
		if char then
			local humanoid = char:FindFirstChildOfClass("Humanoid")
			if humanoid then
				humanoid.WalkSpeed = normalSpeed
			end
		end
	end
end)

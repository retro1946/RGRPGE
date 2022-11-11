local toolbar = plugin:CreateToolbar("Retro's RPG Engine") -- create a toolbar

local InstallBtn = toolbar:CreateButton("Install files","Install all the required files.","") -- First Parameter: ToolTip, Second parameter: ToolTip. Third parameter: Icon id.

InstallBtn.Click:Connect(function()
	local RPGAssets = script.Parent.RPGAssets:Clone()
	RPGAssets.Parent = game.ServerStorage
	-- Local Scripts
	local pcam = script.Parent.LocalScripts.PlayerCam:Clone()
	pcam.Parent = game.StarterGui
	pcam.Enabled = true
	local pinfo = script.Parent.LocalScripts.PlayerInfo:Clone()
	pinfo.Parent = game.StarterGui
	pinfo.Enabled = true
	local sprint = script.Parent.LocalScripts.Sprint:Clone()
	sprint.Parent = game.StarterGui
	sprint.Enabled = true
	-- Server Scripts
	local health = script.Parent.ServerScripts.Health:Clone()
	health.Parent = game.ServerScriptService
	health.Enabled = true
end) -- Connecting the function

local DoorBtn = toolbar:CreateButton("Make door","Turn a selected part into a working door.","") -- First Parameter: ToolTip, Second parameter: ToolTip. Third parameter: Icon id.

DoorBtn.Click:Connect(function()
	Model = game.ServerStorage.RPGAssets.Door:Clone() --Model you want to destroy
	Model.Parent = game.Selection:Get()[#game.Selection:Get()]

	for _, Child in pairs(Model:GetChildren()) do
		Child.Parent = Model.Parent --Move the children up one parent
	end

	Model:Destroy() --Destroy the model afterwards
	
	local selectbox = script.Parent.SelectionBox:Clone()
	selectbox.Parent = game.Selection:Get()[#game.Selection:Get()]
	selectbox.Adornee = selectbox.Parent
	wait(3)
	selectbox.Transparency = 0.1
	wait(0.03)
	selectbox.Transparency = 0.2
	wait(0.03)
	selectbox.Transparency = 0.3
	wait(0.03)
	selectbox.Transparency = 0.4
	wait(0.03)
	selectbox.Transparency = 0.5
	wait(0.03)
	selectbox.Transparency = 0.6
	wait(0.03)
	selectbox.Transparency = 0.7
	wait(0.03)
	selectbox.Transparency = 0.8
	wait(0.03)
	selectbox.Transparency = 0.9
	wait(0.03)
	selectbox:Destroy()
end) -- Connecting the function

local FightBtn = toolbar:CreateButton("Make fight","Turn a selected body part into a configurable fight.","") -- First Parameter: ToolTip, Second parameter: ToolTip. Third parameter: Icon id.

FightBtn.Click:Connect(function()
	Model = script.Parent.RPGAssets.Fight:Clone() --Model you want to destroy
	Model.Parent = game.Selection:Get()[#game.Selection:Get()]

	for _, Child in pairs(Model:GetChildren()) do
		Child.Parent = Model.Parent --Move the children up one parent
	end

	Model:Destroy() --Destroy the model afterwards

	local selectbox = game.ServerStorage.SelectionBox:Clone()
	selectbox.Parent = game.Selection:Get()[#game.Selection:Get()]
	selectbox.Adornee = selectbox.Parent
	wait(3)
	selectbox.Transparency = 0.1
	wait(0.03)
	selectbox.Transparency = 0.2
	wait(0.03)
	selectbox.Transparency = 0.3
	wait(0.03)
	selectbox.Transparency = 0.4
	wait(0.03)
	selectbox.Transparency = 0.5
	wait(0.03)
	selectbox.Transparency = 0.6
	wait(0.03)
	selectbox.Transparency = 0.7
	wait(0.03)
	selectbox.Transparency = 0.8
	wait(0.03)
	selectbox.Transparency = 0.9
	wait(0.03)
	selectbox:Destroy()
end) -- Connecting the function

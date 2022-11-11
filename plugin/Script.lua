local toolbar = plugin:CreateToolbar("Retro's RPG Engine") -- create a toolbar

local InstallBtn = toolbar:CreateButton("Install files","Install all the required files.","") -- Create the engine install button.

InstallBtn.Click:Connect(function() -- Connect the install button to a function
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
end)

local DoorBtn = toolbar:CreateButton("Make door","Turn a selected part into a working door.","") -- Create a button to create a door.

DoorBtn.Click:Connect(function() -- Connect the door button to a function
	Model = game.ServerStorage.RPGAssets.Door:Clone() --The doors contents
	Model.Parent = game.Selection:Get()[#game.Selection:Get()]

	for _, Child in pairs(Model:GetChildren()) do
		Child.Parent = Model.Parent --Move the children up one parent
	end

	Model:Destroy() --Destroy the model afterwards
	
	-- The following lines of code show a selection box that dissapears.	
	
	local selectbox = script.Parent.SelectionBox:Clone()
	selectbox.Parent = game.Selection:Get()[#game.Selection:Get()] -- Gets the user's selection
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

local FightBtn = toolbar:CreateButton("Make fight","Turn a selected body part into a configurable fight.","") -- This button will install a fight to a humanoid (choose a body part)

FightBtn.Click:Connect(function() -- Connects the button to a function
	Model = script.Parent.RPGAssets.Fight:Clone() -- The contents of the fight
	Model.Parent = game.Selection:Get()[#game.Selection:Get()]

	for _, Child in pairs(Model:GetChildren()) do
		Child.Parent = Model.Parent --Move the children up one parent
	end

	Model:Destroy() --Destroy the model afterwards

	-- The following lines of code show a selection box that dissapears.	
		
	local selectbox = game.ServerStorage.SelectionBox:Clone()
	selectbox.Parent = game.Selection:Get()[#game.Selection:Get()] -- Gets the user's selection
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

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Pet Simulator X", HidePremium = false, IntroText = "Pet Hub" , SaveConfig = true,  ConfigFolder = "TutorialConfig"})

--Values
_G.GetInvitesOpen = true
_G.autoHatch = true
_G.selectEgg = "Golden Valentines Egg"


--Functions

function autoHatch()
	while _G.autoHatch == true do
		local args = {
			[1] = _G.selectEgg,
			[2] = false,
			[3] = false
		}
		
		game:GetService("ReplicatedStorage")["Buy Egg"]:InvokeServer(unpack(args))
		wait(.0000000000000000000000000000000000000000000000000000000000000001)
		
end
end	

function GetInvitesOpen()
game:GetService("ReplicatedStorage")["Get Invites Open"]:InvokeServer()
	wait(.00000000000000000000000000000000000000000000000000000000000000001)
end

function GetMyBanks()
local Event = game:GetService("ReplicatedStorage")["Get My Banks"]
Event:InvokeServer()
	wait(.0000000000000000000000000000000000000000000000000000000000000001)
end

-- Tabs
local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local FarmTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Toggles
EggsTab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
		_G.autoHatch = Value
		autoHatch()
	end
})

FarmTab:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(Value)
		_G.GetInvitesOpen = Value
		GetInvitesOpen()
	end
})

MiscTab:AddToggle({
	Name = "Bank",
	Default = false,
	Callback = function(Value)
		_G.GetMyBanks = Value
		GetMyBanks()
	end
})

--Dropdowns

EggsTab:AddDropdown({
	Name = "Select Egg",
	Default = "Golden Valentines Egg",
	Options = {"Golden Valentines Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
		print(_G.selectEgg)
	end    
})




OrionLib:Init()

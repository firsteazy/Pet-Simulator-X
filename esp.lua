local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Pet Simulator X", HidePremium = false, IntroText = "Pet Hub" , SaveConfig = true,  ConfigFolder = "TutorialConfig"})

--Values
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

function autoHatch2()
	while _G.autoHatch2 == true do
		local args = {
			[1] = _G.selectEgg,
			[2] = true,
			[3] = false
		}
		
		game:GetService("ReplicatedStorage")["Buy Egg"]:InvokeServer(unpack(args))
		wait(.0000000000000000000000000000000000000000000000000000000000000001)	
end
end	

function autoHatch3()
	while _G.autoHatch3 == true do
		local args = {
			[1] = _G.selectEgg,
			[2] = false,
			[3] = true
		}
		
		game:GetService("ReplicatedStorage")["Buy Egg"]:InvokeServer(unpack(args))
		wait(.0000000000000000000000000000000000000000000000000000000000000001)	
end
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

local PlayerTab = Window:MakeTab({
	Name = "Player",
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

EggsTab:AddToggle({
	Name = "3 Egg (Need Gamepass)",
	Default = false,
	Callback = function(Value)
		_G.autoHatch2 = Value
		autoHatch2()
	end
})

EggsTab:AddToggle({
	Name = "8 Egg (Need Gamepass)",
	Default = false,
	Callback = function(Value)
		_G.autoHatch3 = Value
		autoHatch3()
	end
})

--Dropdowns

EggsTab:AddDropdown({
	Name = "Valentine`s Event",
	Default = "Golden Valentines Egg",
	Options = {"Golden Valentines Egg","Valentines Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
		print(_G.selectEgg)
	end    
})

EggsTab:AddDropdown({
	Name = "Spawn World",
	Default = "Golden Valentines Egg",
	Options = {"Cracked Egg","Golden Cracked Egg","Spotted Egg","Golden Cracked Egg","Wood Egg","Golden Wood Egg","Grass Egg","Golden Grass Egg","Beachball Egg","Golden Beachball Egg","Coconut Egg","Golden Coconut Egg","Rock Egg","Golden Rock Egg","Geode Egg","Golden Geode Egg","Snow Egg","Golden Snow Egg","Ice Egg","Golden Ice Egg","Icicle Egg","Golden Icicle Egg","Yeti Egg","Golden Yeti Egg","Cactus Egg","Golden Cactus Egg","Spiked Egg","Golden Spiked Egg","Obsidian Egg","Golden Obsidian Egg","Magma Egg","Golden Magma Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
		print(_G.selectEgg)
	end    
})

EggsTab:AddDropdown({
	Name = "Fantasy World",
	Default = "Golden Valentines Egg",
	Options = {"Enchanted Egg","Golden Enchanted Egg","Relic Egg","Golden Relic Egg","Samurai Egg","Golden Samurai Egg","Rainbow Egg","Golden Rainbow Egg","Haunted Egg","Golden Haunted Egg","Hell Egg","Golden Hell Egg","Heaven Egg","Golden Heaven Egg","Empyrean Egg","Golden Empyrean Egg","Dominus Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
		print(_G.selectEgg)
	end    
})

EggsTab:AddDropdown({
	Name = "Tech World",
	Default = "Golden Valentines Egg",
	Options = {"Metal Egg","Golden Metal Egg","Tech Egg","Golden Tech Egg","Titanium Egg","Golden Titanium Egg","Dark Tech Egg","Golden Dark Tech Egg","Steampunk Egg","Golden Steampunk Egg","Mechanical Egg","Golden Mechanical Egg","Lab Egg","Golden Lab Egg","Chemical Egg","Golden Chemical Egg","Alien Egg","Golden Alien Egg","Martian Egg","Golden Martian Egg","Planet Egg","Golden Planet Egg","Glitch Egg","Golden Glitch Egg","Hacker Egg","Golden Hacker Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
		print(_G.selectEgg)
	end    
})

EggsTab:AddDropdown({
	Name = "Axolotl Ocean",
	Default = "Golden Valentines Egg",
	Options = {"Axolotl Egg","Golden Axolotl Egg","Shiny Axolotl Egg","Golden Shiny Axolotl Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
		print(_G.selectEgg)
	end    
})

EggsTab:AddDropdown({
	Name = "Pixel World",
	Default = "Golden Valentines Egg",
	Options = {"Pixel Egg","Golden Pixel Egg","Spotted Pixel Egg","Golden Spotted Pixel Egg","Rainbow Pixel Egg","Golden Rainbow Pixel Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
		print(_G.selectEgg)
	end    
})

EggsTab:AddDropdown({
	Name = "Cat World",
	Default = "Golden Valentines Egg",
	Options = {"Paw Egg","Golden Paw Egg","Yarn Egg","Golden Yarn Egg","Cat Egg","Golden Cat Egg","Royal Egg","Golden Royal Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
		print(_G.selectEgg)
	end    
})

EggsTab:AddDropdown({
	Name = "Doodle World",
	Default = "Golden Valentines Egg",
	Options = {"Flower Doodle Egg","Golden Flower Doodle Egg","Snowy Doodle Egg","Golden Snowy Doodle Egg","Farm Doodle Egg","Golden Farm Doodle Egg","Tropical Doodle Egg","Golden Tropical Doodle Egg","Barn Doodle Egg","Golden Barn Doodle Egg","Mushroom Doodle Egg","Golden Mushroom Doodle Egg","Safari Doodle Egg","Golden Safari Doodle Egg","Fairy Doodle Egg","Golden Fairy Doodle Egg","Gem Doodle Egg","Golden Gem Doodle Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
		print(_G.selectEgg)
	end    
})

-- Slider 

PlayerTab:AddSlider({
	Name = "WalkSpeed",
	Min = 26,
	Max = 250,
	Default = 26,
	Callback = function(Value)
		print(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

PlayerTab:AddSlider({
	Name = "JumpPower",
	Min = 50,
	Max = 250,
	Default = 50,
	Callback = function(Value)
		print(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})




OrionLib:Init()

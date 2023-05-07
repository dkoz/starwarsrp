--[[
   _____       .___                                           .___  ___ ___   ____ ___ ________   
  /  _  \    __| _/___  _______     ____    ____    ____    __| _/ /   |   \ |    |   \\______ \  
 /  /_\  \  / __ | \  \/ /\__  \   /    \ _/ ___\ _/ __ \  / __ | /    ~    \|    |   / |    |  \ 
/    |    \/ /_/ |  \   /  / __ \_|   |  \\  \___ \  ___/ / /_/ | \    Y    /|    |  /  |    `   \
\____|__  /\____ |   \_/  (____  /|___|  / \___  > \___  >\____ |  \___|_  / |______/  /_______  /
        \/      \/             \/      \/      \/      \/      \/        \/                    \/ 	
	Author: KoZ
	Profile: http://steamcommunity.com/id/kozejin
	Github: https://github.com/dkoz
--]]

local hideHUDElements = {
	-- if you DarkRP_HUD this to true, ALL of DarkRP's HUD will be disabled. That is the health bar and stuff,
	-- but also the agenda, the voice chat icons, lockdown text, player arrested text and the names above players' heads
	["DarkRP_HUD"] = false,

	-- DarkRP_EntityDisplay is the text that is drawn above a player when you look at them.
	-- This also draws the information on doors and vehicles
	["DarkRP_EntityDisplay"] = false,

	-- DarkRP_ZombieInfo draws information about zombies for admins who use /showzombie.
	["DarkRP_ZombieInfo"] = false,

	-- This is the one you're most likely to replace first
	-- DarkRP_LocalPlayerHUD is the default HUD you see on the bottom left of the screen
	-- It shows your health, job, salary and wallet
	["DarkRP_LocalPlayerHUD"] = true,

	-- Drawing the DarkRP agenda
	["DarkRP_Agenda"] = true,
	
	-- Hunger Mod
	["DarkRP_Hungermod"] = true
}

-- this is the code that actually disables the drawing.
hook.Add("HUDShouldDraw", "HideDefaultDarkRPHud", function(name)
	if hideHUDElements[name] then return false end
end)

--if true then return end -- REMOVE THIS LINE TO ENABLE THE CUSTOM HUD BELOW

surface.CreateFont( "hud_job", {
	font = "default",
	size = 18,
	weight = 700,
	antialias = true,
	shadow = false
})

surface.CreateFont( "hud_nick", {
	font = "default",
	size = 14,
	weight = 700,
	antialias = true,
	shadow = false
})

surface.CreateFont( "hud_money", {
	font = "default",
	size = 20,
	weight = 500,
	antialias = true,
	shadow = false
})

surface.CreateFont( "hud_salary", {
	font = "default",
	size = 16,
	weight = 500,
	antialias = true,
	shadow = false
})

surface.CreateFont( "hud_agenda", {
	font = "default",
	size = 14,
	weight = 700,
	antialias = true,
	shadow = false
})

local drawavatar = true

local function hudPaint()
	local player = LocalPlayer()
	local health, armor = player:Health(), player:Armor()
	local rank = "Rank: N/A"
	local salary = "Salary: " .. GAMEMODE.Config.currency .. ( player:getDarkRPVar( "salary" ) or 0 )
	local job = player:getDarkRPVar( "job" ) or ""
	local wallet = GAMEMODE.Config.currency .. ( player:getDarkRPVar( "money" ) or 0 )
	local energy = player:getDarkRPVar( "Energy" ) or 0

	-- HUD Design
	draw.RoundedBox( 0, 5, ScrH() - 125, 350, 120, hud.config.background )
	surface.SetDrawColor( hud.config.line )
	surface.DrawLine( 5, ScrH() - 60, 355, ScrH() - 60 )
	surface.SetDrawColor( hud.config.linetwo )
	surface.DrawLine( 5, ScrH() - 59, 355, ScrH() - 59 )
	
	-- Health, Armor, and Energy
	draw.RoundedBox( 0, 15, ScrH() - 50, 330, 15, hud.config.backgroundtwo )
	draw.RoundedBox( 0, 15, ScrH() - 50, 330 * math.Clamp( health, 0, 100 ) / 100, 15, hud.config.health )
	surface.SetDrawColor( hud.config.border )
	surface.DrawOutlinedRect( 15, ScrH() - 50, 330, 15 )
	
	draw.RoundedBox( 0, 15, ScrH() - 30, 330, 15, hud.config.backgroundtwo )
	draw.RoundedBox( 0, 15, ScrH() - 30, 330 * math.Clamp( armor, 0, 100 ) / 100, 15, hud.config.armor )
	surface.SetDrawColor( hud.config.border )
	surface.DrawOutlinedRect( 15, ScrH() - 30, 330, 15 )
	
	if energy > 0 then
		draw.RoundedBox( 0, 70, ScrH() - 75, 165, 10, hud.config.backgroundtwo )
		draw.RoundedBox( 0, 70, ScrH() - 75, 165 * math.Clamp( energy, 0, 100 ) / 100, 10, hud.config.energy )
		surface.SetDrawColor( hud.config.border )
		surface.DrawOutlinedRect( 70, ScrH() - 75, 165, 10 )
	end
	
	-- Salary and Wallet
	draw.RoundedBox( 0, 240, ScrH() - 125, 115, 65, hud.config.backgroundtwo )
	surface.SetDrawColor( hud.config.border )
	surface.DrawOutlinedRect( 240, ScrH() - 125, 115, 66 )
	draw.DrawText( wallet, "hud_money", 298, ScrH() - 110, hud.config.text, TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM )
	draw.DrawText( salary, "hud_salary", 298, ScrH() - 90, hud.config.text, TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM )
	
	-- Job and Player Name
	draw.DrawText( job, "hud_job", 70, ScrH() - 105, hud.config.text )
	draw.DrawText( player:Nick(), "hud_nick", 70, ScrH() - 120, hud.config.text )
	draw.DrawText( rank, "hud_nick", 70, ScrH() - 85, hud.config.text )
	
	-- Drawing avatar on HUD
	if drawavatar then
		local avatar = vgui.Create( "AvatarImage" )
		avatar:SetSize( 55, 55 )
		avatar:SetPos( 10, ScrH() - 120 )
		avatar:SetPlayer( player, 64 )
		avatar:ParentToHUD()
		drawavatar = false
	end
	
	-- HUD Border
	surface.SetDrawColor( hud.config.border )
	surface.DrawOutlinedRect( 5, ScrH() - 125, 350, 120 )
	
	-- HUD Agenda
	local agenda = player:getAgendaTable()
	if not agenda then return end

	draw.RoundedBox( 0, 5, 5, 450, 105, hud.config.background )
	draw.RoundedBox( 0, 5, 5, 450, 20, hud.config.backgroundtwo )
	surface.SetDrawColor( hud.config.line )
	surface.DrawLine( 5, 25, 455, 25 )
	surface.SetDrawColor( hud.config.linetwo )
	surface.DrawLine( 5, 26, 455, 26 )

	draw.DrawNonParsedText( agenda.Title, "hud_agenda", 15, 8, hud.config.text, 0 )

	local text = player:getDarkRPVar("agenda") or ""

	text = text:gsub("//", "\n"):gsub("\\n", "\n")
	text = DarkRP.textWrap( text, "hud_agenda", 440 )
	draw.DrawNonParsedText( text, "hud_agenda", 15, 35, hud.config.text, 0 )
	
	-- Agenda Border
	surface.SetDrawColor( hud.config.border )
	surface.DrawOutlinedRect( 5, 5, 450, 105 )
end
hook.Add("HUDPaint", "DarkRP_Mod_HUDPaint", hudPaint)
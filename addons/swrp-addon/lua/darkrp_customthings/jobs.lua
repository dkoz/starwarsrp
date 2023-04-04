--[[
    Star Wars RP
    WOrk in progress~
--]]

-- Clone Troopers
TEAM_CLONECADET = DarkRP.createJob("Clone Cadet", {
    color = Color(0, 25, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You are a clone cadet!",
    weapons = {},
    command = "cadet",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Clone Troopers",
    sortOrder = 1,
    PlayerSpawn = function(ply) ply:SetHealth(125) end,
})

TEAM_CLONETROOP = DarkRP.createJob("Clone Trooper", {
    color = Color(0, 25, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You are a clone trooper!",
    weapons = {},
    command = "clonetrooper",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.1,
    admin = 0,
    vote = false,
    hasLicense = false,
    canDemote = false,
    category = "Clone Troopers",
    sortOrder = 2,
    PlayerSpawn = function(ply) ply:SetHealth(150) ply:SetArmor(50) end,
    customCheck = function(ply) return CLIENT or ply:IsAdmin() end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

-- 501st Attack Battalion
TEAM_501TROOPER = DarkRP.createJob("501st Trooper", {
    color = Color(100, 100, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 501st Attack Battalion Trooper",
    weapons = {},
    command = "501trooper",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.1,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "501st Attack Battalion",
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_501MEDIC = DarkRP.createJob("501st Medic", {
    color = Color(100, 100, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 501st Attack Battalion Medic",
    weapons = {},
    command = "501medic",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.2,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 2,
    category = "501st Attack Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_501SERGEANT = DarkRP.createJob("501st Sergeant", {
    color = Color(100, 100, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 501st Attack Battalion Sergeant",
    weapons = {},
    command = "501Sergeant",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.2,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 3,
    category = "501st Attack Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_501OFFICER = DarkRP.createJob("501st Officer", {
    color = Color(100, 100, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 501st Attack Battalion Officer",
    weapons = {},
    command = "501officer",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.2,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 4,
    category = "501st Attack Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_501MAJOR = DarkRP.createJob("501st Major", {
    color = Color(100, 100, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 501st Attack Battalion Major",
    weapons = {},
    command = "501major",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.2,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 5,
    category = "501st Attack Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_501COMMANDER = DarkRP.createJob("501st Commander", {
    color = Color(100, 100, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 501st Attack Battalion Commander",
    weapons = {},
    command = "501commander",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.3,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 6,
    category = "501st Attack Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

-- 18th Defense Battalion

TEAM_18TROOPER = DarkRP.createJob("18th Trooper", {
    color = Color(100, 100, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 18th Defense Battalion Trooper",
    weapons = {},
    command = "18trooper",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.1,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "18th Defense Battalion",
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_18MEDIC = DarkRP.createJob("18th Medic", {
    color = Color(100, 100, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 18th Defense Battalion Medic",
    weapons = {},
    command = "18medic",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.2,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 2,
    category = "18th Defense Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_18SERGEANT = DarkRP.createJob("18th Sergeant", {
    color = Color(100, 100, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 18th Defense Battalion Sergeant",
    weapons = {},
    command = "18sergeant",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.2,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 3,
    category = "18th Defense Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_18OFFICER = DarkRP.createJob("18th Officer", {
    color = Color(100, 100, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 18th Defense Battalion Officer",
    weapons = {},
    command = "18officer",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.2,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 4,
    category = "18th Defense Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_18MAJOR = DarkRP.createJob("501st Major", {
    color = Color(100, 100, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 18th Defense Battalion Major",
    weapons = {},
    command = "18major",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.2,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 5,
    category = "18th Defense Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_18COMMANDER = DarkRP.createJob("18th Commander", {
    color = Color(100, 100, 100, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 18th Defense Battalion Commander",
    weapons = {},
    command = "18commander",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.3,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 6,
    category = "18th Defense Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

-- 41st Recon Battalion

TEAM_41TROOPER = DarkRP.createJob("41st Trooper", {
    color = Color(90, 90, 90, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 41st Recon Battalion Trooper",
    weapons = {},
    command = "41trooper",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "41st Recon Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_41MEDIC = DarkRP.createJob("41st Medic", {
    color = Color(90, 90, 90, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 41st Recon Battalion Medic",
    weapons = {},
    command = "41medic",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "41st Recon Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_41SERGEANT = DarkRP.createJob("41st Sergeant", {
    color = Color(90, 90, 90, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 41st Recon Battalion Sergeant",
    weapons = {},
    command = "41sergeant",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "41st Recon Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_41OFFICER = DarkRP.createJob("41st Officer", {
    color = Color(90, 90, 90, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 41st Recon Battalion Officer",
    weapons = {},
    command = "41officer",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "41st Recon Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_41MAJOR = DarkRP.createJob("41st Major", {
    color = Color(90, 90, 90, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 41st Recon Battalion Major",
    weapons = {},
    command = "41major",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "41st Recon Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_41COMMANDER = DarkRP.createJob("41st Commander", {
    color = Color(90, 90, 90, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 41st Recon Battalion Commander",
    weapons = {},
    command = "41commander",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "41st Recon Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

-- 38th Engineering Battalion

TEAM_38TROOPER = DarkRP.createJob("38th Trooper", {
    color = Color(70, 70, 70, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 38th Engineering Battalion Trooper",
    weapons = {},
    command = "38trooper",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "38th Engineering Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_38MEDIC = DarkRP.createJob("38th Medic", {
    color = Color(70, 70, 70, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 38th Engineering Battalion Medic",
    weapons = {},
    command = "38medic",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "38th Engineering Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_38PILOT = DarkRP.createJob("38th Pilot", {
    color = Color(70, 70, 70, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 38th Engineering Battalion Pilot",
    weapons = {},
    command = "38pilot",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "38th Engineering Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_38SERGEANT = DarkRP.createJob("38th Sergeant", {
    color = Color(70, 70, 70, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 38th Engineering Battalion Sergeant",
    weapons = {},
    command = "38sergeant",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "38th Engineering Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_38OFFICER = DarkRP.createJob("38th Officer", {
    color = Color(70, 70, 70, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 38th Engineering Battalion Officer",
    weapons = {},
    command = "38officer",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "38th Engineering Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_38MAJOR = DarkRP.createJob("38th Major", {
    color = Color(70, 70, 70, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 38th Engineering Battalion Major",
    weapons = {},
    command = "38major",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "38th Engineering Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_38COMMANDER = DarkRP.createJob("38th Commander", {
    color = Color(70, 70, 70, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 38th Engineering Battalion Commander",
    weapons = {},
    command = "38commander",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "38th Engineering Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

-- 68th Airborne Battalion

TEAM_68PILOT = DarkRP.createJob("68th Pilot Trooper", {
    color = Color(140, 140, 140, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 68th Airborne Battalion Pilot",
    weapons = {},
    command = "68pilot",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "68th Airborne Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_68OFFICER = DarkRP.createJob("68th Officer", {
    color = Color(140, 140, 140, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 68th Airborne Battalion Officer",
    weapons = {},
    command = "68officer",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.1,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "68th Airborne Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_68COMMANDER = DarkRP.createJob("68th Commander", {
    color = Color(140, 140, 140, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 68th Airborne Battalion Commander",
    weapons = {},
    command = "68commander",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.2,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "68th Airborne Battalion",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

-- 5th Fleet

TEAM_5TROOPER = DarkRP.createJob("5th Trooper", {
    color = Color(135, 135, 135, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 5th Fleet Trooper",
    weapons = {},
    command = "5trooper",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "5th Fleet",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_5MEDIC = DarkRP.createJob("5th Medic", {
    color = Color(135, 135, 135, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 5th Fleet Medic",
    weapons = {},
    command = "5medic",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "5th Fleet",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_5SERGEANT = DarkRP.createJob("5th Sergeant", {
    color = Color(135, 135, 135, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 5th Fleet Sergeant",
    weapons = {},
    command = "5sergeant",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "5th Fleet",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_5OFFICER = DarkRP.createJob("5th Officer", {
    color = Color(135, 135, 135, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 5th Fleet Officer",
    weapons = {},
    command = "5officer",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "5th Fleet",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_5MAJOR = DarkRP.createJob("5th Major", {
    color = Color(135, 135, 135, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 5th Fleet Major",
    weapons = {},
    command = "5major",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "5th Fleet",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_5COMMANDER = DarkRP.createJob("5th Commander", {
    color = Color(135, 135, 135, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a 5th Fleet Commander",
    weapons = {},
    command = "5commander",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "5th Fleet",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

--[[
    Naval Jobs
--]]

TEAM_NAVALCADET = DarkRP.createJob("Naval Cadet", {
    color = Color(135, 135, 135, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a Naval Cadet",
    weapons = {},
    command = "navalcadet",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.1,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "Naval",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_NAVALENSIGN = DarkRP.createJob("Naval Ensign", {
    color = Color(135, 135, 135, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a Naval Ensign",
    weapons = {},
    command = "navalensign",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.15,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "Naval",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_NAVALOFFICER = DarkRP.createJob("Naval Officer", {
    color = Color(135, 135, 135, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a Naval Officer",
    weapons = {},
    command = "navalofficer",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.2,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "Naval",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_NAVALVICE = DarkRP.createJob("Naval Vice Admiral", {
    color = Color(135, 135, 135, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a Naval Vice Admiral",
    weapons = {},
    command = "navalviceadmiral",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.25,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "Naval",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

TEAM_NAVALADMIRAL = DarkRP.createJob("Naval Admiral", {
    color = Color(135, 135, 135, 255),
    model = "models/player/Group03/male_04.mdl",
    description = "You're a Naval Admiral",
    weapons = {},
    command = "navaladmiral",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.3,
    admin = 0,
    vote = false,
    hasLicense = false,
    sortOrder = 1,
    category = "Naval",
    customCheck = function(ply) return CLIENT end,
    CustomCheckFailMsg = "You are not authorized to access this job.",
})

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CLONECADET
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
--GAMEMODE.CivilProtection = {
--    [TEAM_POLICE] = true,
--    [TEAM_CHIEF] = true,
--    [TEAM_MAYOR] = true,
--}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
--DarkRP.addHitmanTeam(TEAM_MOB)

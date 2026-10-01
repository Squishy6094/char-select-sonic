-- name: [CS] Sonic
-- description: \\#fff\\[CS] Sonic (ECP v2.0a)\nBy: \\#0f0\\ULTRA BROS TEAM\n\n\\#fff\\A CS Pack done by CoopDX members that not only gives opportunity to new roster additions but also provides unique movesets.\n\n\\#0f0\\It is RECOMMENDED to have the interpolation set to ACCURATE.\n\n\\#ff0\\Delete the mod.cache file in sm64coopdx's user folder and restart if multiplayer causes issues.\n\n\\#f00\\REQUIRES Character Select v1.16 or newer for all of it's features to be used.
-- category: cs

local TEXT_PACK_NAME = "Sonic"
if not charSelect then
    djui_popup_create(
    "\\#ffffa0\\Sonic requires\nCharacter Select to be enabled.\n\nPlease rehost with it enabled.", 4)
    return
end


-- Additional Voicelines used for Characters
YOSHI_SOUND_FLUTTER = CHAR_SOUND_MAX + 1

GAMEMODE_ACTIVE = false
for i in pairs(gActiveMods) do
    local mod = gActiveMods[i]
    if (mod.incompatible and mod.incompatible:find("gamemode")) or (mod.category and mod.category:find("gamemode")) then
        GAMEMODE_ACTIVE = true
    end
end

-- Characters are stored in a table for ease of addition

extraCharacters = {
    -----------
    -- Sonic --
    -----------
    {
        name = "Sonic",
        description =
        "A rebellious teenage hedgehog with a blue of attitude, originating from Christmas Island. How'd he got here is anyone's guess.",
        credits = "Coop Team",
        color = { r = 0, g = 0, b = 255 },
        model = smlua_model_util_get_id("ec_segasonic_geo"),
        forceChar = CT_MARIO,
        lifeIcon = get_texture_info("icon-ec-segasonic"),
        graffiti = get_texture_info("char-select-ec-graffiti-sonic"),
        camScale = 0.9,
        offset = 0,
        meter = require "movesets/Sonic" .meter,
        caps = {
            normal    = smlua_model_util_get_id("ec_segasonic_cap_geo"),
            wing      = smlua_model_util_get_id("ec_segasonic_wing_cap_geo"),
            metal     = smlua_model_util_get_id("ec_segasonic_metal_cap_geo"),
            metalWing = smlua_model_util_get_id("ec_segasonic_metal_wing_cap_geo")
        },
        palettes = {
            {
                name     = "Default",
                [PANTS]  = '0000FF',
                [SHIRT]  = 'FEC179',
                [GLOVES] = 'FFFFFF',
                [SHOES]  = 'FF0000',
                [HAIR]   = 'FFFF00',
                [SKIN]   = 'FEC179',
                [CAP]    = '0000FF',
                [EMBLEM] = '000000'
            },
            {
                name     = "Retro",
                [PANTS]  = '152a89',
                [SHIRT]  = 'e1a037',
                [GLOVES] = 'FFFFFF',
                [SHOES]  = 'b98025',
                [HAIR]   = '152a89',
                [SKIN]   = 'e1a037',
                [CAP]    = '152a89',
                [EMBLEM] = '000000'
            },
            {
                name     = "Mirror",
                [PANTS]  = '555555',
                [SHIRT]  = 'cccccc',
                [GLOVES] = 'cccccc',
                [SHOES]  = '555555',
                [HAIR]   = 'cccccc',
                [SKIN]   = 'cccccc',
                [CAP]    = '555555',
                [EMBLEM] = '000000'
            },
            {
                name     = "Glitch",
                [PANTS]  = '000000',
                [SHIRT]  = 'ffb493',
                [GLOVES] = 'FFFFFF',
                [SHOES]  = 'ff9000',
                [HAIR]   = 'FFFF00',
                [SKIN]   = 'ffb493',
                [CAP]    = '49fc00',
                [EMBLEM] = '006cff'
            },
            {
                name     = "Origin",
                [PANTS]  = 'ea7640',
                [SHIRT]  = 'e7eae5',
                [GLOVES] = 'FFFFFF',
                [SHOES]  = '248bbf',
                [HAIR]   = 'ba6864',
                [SKIN]   = 'e7eae5',
                [CAP]    = 'ea7640',
                [EMBLEM] = '000000'
            },
        },
        voices = {
            [CHAR_SOUND_ATTACKED] = "sonic_attacked.ogg",
            [CHAR_SOUND_COUGHING1] = "sonic_coughing1.ogg",
            [CHAR_SOUND_COUGHING2] = "sonic_coughing2.ogg",
            [CHAR_SOUND_COUGHING3] = "sonic_coughing3.ogg",
            [CHAR_SOUND_DOH] = "sonic_doh.ogg",
            [CHAR_SOUND_DROWNING] = "sonic_drowning.ogg",
            [CHAR_SOUND_DYING] = "sonic_dying.ogg",
            [CHAR_SOUND_EEUH] = "sonic_eeuh.ogg",
            [CHAR_SOUND_GROUND_POUND_WAH] = "sonic_ground_pound_wah.ogg",
            [CHAR_SOUND_HAHA] = "sonic_haha.ogg",
            [CHAR_SOUND_HAHA_2] = "sonic_haha2.ogg",
            [CHAR_SOUND_HERE_WE_GO] = "sonic_herewego.ogg",
            [CHAR_SOUND_HOOHOO] = "sonic_hoohoo.ogg",
            [CHAR_SOUND_HRMM] = "sonic_hrmm.ogg",
            [CHAR_SOUND_IMA_TIRED] = "sonic_imatired.ogg",
            [CHAR_SOUND_MAMA_MIA] = "sonic_mamamia.ogg",
            [CHAR_SOUND_LETS_A_GO] = "sonic_letsago.ogg",
            [CHAR_SOUND_ON_FIRE] = "sonic_on_fire.ogg",
            [CHAR_SOUND_OOOF] = "sonic_ooof.ogg",
            [CHAR_SOUND_OOOF2] = "sonic_ooof2.ogg",
            [CHAR_SOUND_PANTING] = "sonic_panting.ogg",
            [CHAR_SOUND_PANTING_COLD] = "sonic_panting_cold.ogg",
            [CHAR_SOUND_PUNCH_HOO] = "sonic_punch_hoo.ogg",
            [CHAR_SOUND_PUNCH_WAH] = "sonic_punch_wah.ogg",
            [CHAR_SOUND_PUNCH_YAH] = "sonic_punch_yah.ogg",
            [CHAR_SOUND_SO_LONGA_BOWSER] = "sonic_solonga_bowser.ogg",
            [CHAR_SOUND_SNORING1] = "sonic_snoring1.ogg",
            [CHAR_SOUND_SNORING2] = "sonic_snoring2.ogg",
            [CHAR_SOUND_SNORING3] = { "sonic_snoring2.ogg", "sonic_snoring1.ogg", "sonic_snoring3.ogg" },
            [CHAR_SOUND_TWIRL_BOUNCE] = "sonic_twirl_bounce.ogg",
            [CHAR_SOUND_UH] = "sonic_uh.ogg",
            [CHAR_SOUND_UH2] = "sonic_uh2.ogg",
            [CHAR_SOUND_UH2_2] = "sonic_uh2_2.ogg",
            [CHAR_SOUND_WAAAOOOW] = "sonic_waaaooow.ogg",
            [CHAR_SOUND_WAH2] = "sonic_wah2.ogg",
            [CHAR_SOUND_WHOA] = "sonic_whoa.ogg",
            [CHAR_SOUND_YAHOO] = "sonic_yahoo.ogg",
            [CHAR_SOUND_YAWNING] = "sonic_yawning.ogg",
            [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = { "sonic_yahoo.ogg", "sonic_yahoo1.ogg", "sonic_yahoo2.ogg", "sonic_yahoo3.ogg", "sonic_yahoo4.ogg", "sonic_yahoo5.ogg" },
            [CHAR_SOUND_YAH_WAH_HOO] = { "sonic_yah_wah_hoo1.ogg", "sonic_yah_wah_hoo2.ogg", "sonic_yah_wah_hoo3.ogg" },
            --[CHAR_SOUND_HELLO] = "sonic_hello.ogg"
        },
        anims = {
            [CHAR_ANIM_WALKING] = function(m)
                if gCSPlayers[m.playerIndex].movesetToggle then
                    return 'sonic_walk'
                end
            end,
            [CHAR_ANIM_RUNNING] = function(m)
                if gCSPlayers[m.playerIndex].movesetToggle then
                    return 'sonic_running'
                end
            end,
            [CHAR_ANIM_RUNNING_UNUSED] = function(m)
                if gCSPlayers[m.playerIndex].movesetToggle then
                    return 'sonic_running3'
                end
            end,
            [CHAR_ANIM_STAR_DANCE] = function(m)
                if gCSPlayers[m.playerIndex].movesetToggle then
                    return 'sonic_victory'
                end
            end,
            [CHAR_ANIM_RETURN_FROM_STAR_DANCE] = function(m)
                if gCSPlayers[m.playerIndex].movesetToggle then
                    return 'sonic_after_victory'
                end
            end,
            [CHAR_ANIM_TAKE_CAP_OFF_THEN_ON] = 'sonic_star_exit_with_hat',
            [CHAR_ANIM_PUT_CAP_ON] = 'sonic_putting_on_hat',
            [CS_ANIM_MENU] = 'cs_sonic',
        },
        eyes = {
            [CS_ANIM_MENU] = MARIO_EYES_LOOK_LEFT
        },
    },
}

local ultraBrosCredits = {
    {
        name = TEXT_PACK_NAME,
        "FunkyLion,Lead Dev",
        "Melzinoff,Co-Lead",
        "MlopsFunny,Animation",
        "Sharen,Animation",
        "WBmario,Animation",
        "FluffaMario,Models",
        "EmilyEmmi,Moveset",
        "Wibblus,Moveset",
        "SwagSkeleton95,Moveset",
        "steven3004,Moveset, Coder",
        "PeachyPeach,Moveset, Coder",
        "Squishy6094,CS Coder",
        "xLuigiGamerx,Moveset, Coder",
        'Strawberii "Oreo",Render Icons',
        "Chars_64,Render Icons",
        "WaterVapor,DK Render",
        "wwolforam,Sonic Render",
        "ThatGurlTilly,Birdo Model",
        "SMSAlfredo,Coder",
        "Palettes,Ale64"
    },
    {
        name = TEXT_PACK_NAME .. " Voice Actors",
        "MelissaMekrose,Toadette",
        "SuperKirbyLover,Peach",
        "MorphiGalaxi,Daisy",
        "FunkyLion,Yoshi",
        "LuUvvUCY,Birdo",
        "VinnyVinesauce,Spike",
        "BeckyVO,Pauline",
        "GauntletQueen,Rosalina",
        "SlashOLantern,WaPeach",
        "Dean Seavor,Donkey Kong",
        "ReeseiMental,Sonic",
    },
    {
        name = TEXT_PACK_NAME .. " Graffiti Artists",
        "WaflesAAA",
        "SAWhane",
        "FunkyLion",
        "VioletArts",
        "SullyBoy",
        "Heylee2010"
    },
    {
        name = TEXT_PACK_NAME .. " Pixel Artists",
        "FunkyLion",
        "EmilyEmmi",
        "AquariusAlexx",
        "Lyra",
        "SonicZetrex",
        "Glyph",
        "Leohaha"
    },
}

local function on_character_select_load()
    for i, char in pairs(extraCharacters) do
        local _ENV = setmetatable(char, { __index = _G })
        tablePos = character_add(name, description, credits, color, model, forceChar, lifeIcon, camScale, offset, meter, graffiti)
        if caps then character_add_caps(model, caps) end
        if voices then character_add_voice(model, voices) end
        if palettes then
            for i = 1, #palettes do
                character_add_palette_preset(model, palettes[i], palettes[i].name)
            end
        end
        character_set_category(tablePos, "CoopDX")
        if anims then character_add_animations(model, anims, eyes, hands) end
        if meter then character_add_health_meter(tablePos, meter) end
        if graffiti then character_add_graffiti(tablePos, graffiti) end
    end

    for i = 1, #ultraBrosCredits do
        for c = 1, #ultraBrosCredits[i] do
            local creditSplit = string.split(ultraBrosCredits[i][c], ",")
            charSelect.credit_add(ultraBrosCredits[i].name, creditSplit[1], creditSplit[2])
        end
    end
end

hook_event(HOOK_ON_MODS_LOADED, on_character_select_load)
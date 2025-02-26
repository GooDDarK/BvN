-- In this file you can set up all the properties and settings for your game mode.


ENABLE_HERO_RESPAWN = true              -- Should the heroes automatically respawn on a timer or stay dead until manually respawned
UNIVERSAL_SHOP_MODE = false            -- Should the main shop contain Secret Shop items as well as regular items
ALLOW_SAME_HERO_SELECTION = false        -- Should we let people select the same hero as each other

HERO_SELECTION_TIME = 60.0              -- How long should we let people select their hero?
PRE_GAME_TIME = 90                   -- How long after people select their heroes should the horn blow and the game start?
TREE_REGROW_TIME = 60.0                 -- How long should it take individual trees to respawn after being cut down/destroyed?
POST_GAME_TIME = 60.0                   -- How long should we let people look at the scoreboard before closing the server automatically?

GOLD_PER_TICK = 1                     -- How much gold should players get per tick?
GOLD_TICK_TIME = 0.6                     -- How long should we wait in seconds between gold ticks?

RECOMMENDED_BUILDS_DISABLED = true     -- Should we disable the recommened builds for heroes
CAMERA_DISTANCE_OVERRIDE = 1134.0       -- How far out should we allow the camera to go?  1134 is the default in Dota

MINIMAP_ICON_SIZE = 1                   -- What icon size should we use for our heroes?
MINIMAP_CREEP_ICON_SIZE = 1             -- What icon size should we use for creeps?
MINIMAP_RUNE_ICON_SIZE = 1              -- What icon size should we use for runes?

RUNE_SPAWN_TIME = 120                   -- How long in seconds should we wait between rune spawns?
CUSTOM_BUYBACK_COST_ENABLED = false      -- Should we use a custom buyback cost setting?
CUSTOM_BUYBACK_COOLDOWN_ENABLED = false  -- Should we use a custom buyback time?
BUYBACK_ENABLED = true                 -- Should we allow people to buyback when they die?

DISABLE_FOG_OF_WAR_ENTIRELY = false     -- Should we disable fog of war entirely for both teams?
USE_UNSEEN_FOG_OF_WAR = false           -- Should we make unseen and fogged areas of the map completely black until uncovered by each team? 
                                            -- Note: DISABLE_FOG_OF_WAR_ENTIRELY must be false for USE_UNSEEN_FOG_OF_WAR to work
USE_STANDARD_DOTA_BOT_THINKING = false  -- Should we have bots act like they would in Dota? (This requires 3 lanes, normal items, etc)
USE_STANDARD_HERO_GOLD_BOUNTY = true    -- Should we give gold for hero kills the same as in Dota, or allow those values to be changed?

USE_CUSTOM_TOP_BAR_VALUES = true        -- Should we do customized top bar values or use the default kill count per team?
TOP_BAR_VISIBLE = true                  -- Should we display the top bar score/count at all?
SHOW_KILLS_ON_TOPBAR = true             -- Should we display kills only on the top bar? (No denies, suicides, kills by neutrals)  Requires USE_CUSTOM_TOP_BAR_VALUES

ENABLE_TOWER_BACKDOOR_PROTECTION = true-- Should we enable backdoor protection for our towers?
REMOVE_ILLUSIONS_ON_DEATH = false       -- Should we remove all illusions if the main hero dies?
DISABLE_GOLD_SOUNDS = false             -- Should we disable the gold sound when players get gold?

END_GAME_ON_KILLS = false                -- Should the game end after a certain number of kills?
KILLS_TO_END_GAME_FOR_TEAM = 0         -- How many kills for a team should signify an end of game?

USE_CUSTOM_HERO_LEVELS = false           -- Should we allow heroes to have custom levels?
MAX_LEVEL = 25                          -- What level should we let heroes get to?
USE_CUSTOM_XP_VALUES = true            -- Should we use custom XP values to level up heroes, or the default Dota numbers?

--Fill this table up with the required XP per level if you want to change it
--XP_PER_LEVEL_TABLE = {}
--for i=1,MAX_LEVEL do
-- XP_PER_LEVEL_TABLE[i] = (i-1) * 100
--end

ENABLE_FIRST_BLOOD = true               -- Should we enable first blood for the first kill in this game?
HIDE_KILL_BANNERS = false               -- Should we hide the kill banners that show when a player is killed?
LOSE_GOLD_ON_DEATH = true               -- Should we have players lose the normal amount of dota gold on death?
SHOW_ONLY_PLAYER_INVENTORY = false      -- Should we only allow players to see their own inventory even when selecting other units?
DISABLE_STASH_PURCHASING = false        -- Should we prevent players from being able to buy items into their stash when not at a shop?
DISABLE_ANNOUNCER = false               -- Should we disable the announcer from working in the game?
FORCE_PICKED_HERO = nil                 -- What hero should we force all players to spawn as? (e.g. "npc_dota_hero_axe").  Use nil to allow players to pick their own hero.

FIXED_RESPAWN_TIME = -1                 -- What time should we use for a fixed respawn timer?  Use -1 to keep the default dota behavior.
STARTING_GOLD = 600
FOUNTAIN_CONSTANT_MANA_REGEN = -1       -- What should we use for the constant fountain mana regen?  Use -1 to keep the default dota behavior.
FOUNTAIN_PERCENTAGE_MANA_REGEN = -1     -- What should we use for the percentage fountain mana regen?  Use -1 to keep the default dota behavior.
FOUNTAIN_PERCENTAGE_HEALTH_REGEN = -1   -- What should we use for the percentage fountain health regen?  Use -1 to keep the default dota behavior.
MAXIMUM_ATTACK_SPEED = 600              -- What should we use for the maximum attack speed?
MINIMUM_ATTACK_SPEED = 20               -- What should we use for the minimum attack speed?


-- NOTE: You always need at least 2 non-bounty (non-regen while broken) type runes to be able to spawn or your game will crash!
ENABLED_RUNES = {}                      -- Which runes should be enabled to spawn in our game mode?
ENABLED_RUNES[DOTA_RUNE_DOUBLEDAMAGE] = true
ENABLED_RUNES[DOTA_RUNE_HASTE] = true
ENABLED_RUNES[DOTA_RUNE_ILLUSION] = true
ENABLED_RUNES[DOTA_RUNE_INVISIBILITY] = true
ENABLED_RUNES[DOTA_RUNE_REGENERATION] = true -- Regen runes are currently not spawning as of the writing of this comment
ENABLED_RUNES[DOTA_RUNE_BOUNTY] = true


if GetMapName() == "dota" then
	MAX_NUMBER_OF_TEAMS = 2              -- How many potential teams can be in this game mode?
	
elseif GetMapName() == "2x2" then
	MAX_NUMBER_OF_TEAMS = 2              -- How many potential teams can be in this game mode?
elseif GetMapName() == "duel" then
	MAX_NUMBER_OF_TEAMS = 2              -- How many potential teams can be in this game mode?
end

USE_CUSTOM_TEAM_COLORS = false          -- Should we use custom team colors?
USE_CUSTOM_TEAM_COLORS_FOR_PLAYERS = false          -- Should we use custom team colors to color the players/minimap?

TEAM_COLORS = {}                        -- If USE_CUSTOM_TEAM_COLORS is set, use these colors.
TEAM_COLORS[DOTA_TEAM_GOODGUYS] = { 101, 212, 19 }  --    Teal
TEAM_COLORS[DOTA_TEAM_BADGUYS]  = { 243, 201, 9 }   --    Yellow
TEAM_COLORS[DOTA_TEAM_CUSTOM_1] = { 197, 77, 168 }	

if GetMapName() == "dota" then
print ("dota")
	USE_AUTOMATIC_PLAYERS_PER_TEAM = true  -- Should we set the number of players to 10 / MAX_NUMBER_OF_TEAMS?
	CUSTOM_TEAM_PLAYER_COUNT = {}           -- If we're not automatically setting the number of players per team, use this table
	CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_GOODGUYS] = 5
	CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_BADGUYS]  = 5              -- How many potential teams can be in this game mode?
	GOLD_PER_TICK = 1                     -- How much gold should players get per tick?
    GOLD_TICK_TIME = 0.6                     -- How long should we wait in seconds between gold ticks?
	END_GAME_ON_KILLS = false                -- Should the game end after a certain number of kills?
	--KILLS_TO_END_GAME_FOR_TEAM = 2         -- How many kills for a team should signify an end of game?
	
	_G.helpText1 = "Remember to restart Dota 2 before and after playing BvN."
	_G.helpText2 = "Follow the development of BvN in our group VKontakte: vk.com/bvn_dota2"

elseif GetMapName() == "2x2" then
print ("2x2")
	USE_AUTOMATIC_PLAYERS_PER_TEAM = true  -- Should we set the number of players to 10 / MAX_NUMBER_OF_TEAMS?
	CUSTOM_TEAM_PLAYER_COUNT = {}           -- If we're not automatically setting the number of players per team, use this table
	CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_GOODGUYS] = 2
	CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_BADGUYS]  = 2              -- How many potential teams can be in this game mode?
	PRE_GAME_TIME = 60                   -- How long after people select their heroes should the horn blow and the game start?
	END_GAME_ON_KILLS = true               -- Should the game end after a certain number of kills?
	KILLS_TO_END_GAME_FOR_TEAM = 10         -- How many kills for a team should signify an end of game?
    COURIER_SPEED_BONUS = 640.0
    GLOBAL_EXP_RATE_BONUS = 120.0
	UNIVERSAL_SHOP_MODE = true
	FIXED_RESPAWN_TIME = 30
	FOUNTAIN_CONSTANT_MANA_REGEN = 60       -- What should we use for the constant fountain mana regen?  Use -1 to keep the default dota behavior.
    FOUNTAIN_PERCENTAGE_MANA_REGEN = 5      -- What should we use for the percentage fountain mana regen?  Use -1 to keep the default dota behavior.
    FOUNTAIN_PERCENTAGE_HEALTH_REGEN = 7
	STARTING_GOLD = 600

    _G.helpText1 = "Welcome. On this map, the rules of the turbo mode."
	_G.helpText2 = "To win the team need to score 10 kills."
	_G.helpText4 = "Remember to restart Dota 2 before and after playing BvN."
	_G.helpText5 = "Follow the development of BvN in our group VKontakte: vk.com/bvn_dota2"

elseif GetMapName() == "duel" then
print ("duel")
	USE_AUTOMATIC_PLAYERS_PER_TEAM = true  -- Should we set the number of players to 10 / MAX_NUMBER_OF_TEAMS?
	CUSTOM_TEAM_PLAYER_COUNT = {}           -- If we're not automatically setting the number of players per team, use this table
	CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_GOODGUYS] = 1
	CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_BADGUYS]  = 1              -- How many potential teams can be in this game mode?
	COURIER_SPEED_BONUS = 0.0
	END_GAME_ON_KILLS = true                -- Should the game end after a certain number of kills?
    KILLS_TO_END_GAME_FOR_TEAM = 5         -- How many kills for a team should signify an end of game?
	UNIVERSAL_SHOP_MODE = true
	GOLD_PER_TICK = 1                     -- How much gold should players get per tick?
    GOLD_TICK_TIME = 1                    -- How long should we wait in seconds between gold ticks?
	FIXED_RESPAWN_TIME = 15
	STARTING_GOLD = 600
	PRE_GAME_TIME = 30
	
	_G.helpText1 = "Welcome."
	_G.helpText2 = "тест"
	_G.helpText4 = "Remember to restart Dota 2 before and after playing BvN."
	_G.helpText5 = "Follow the development of BvN in our group VKontakte: vk.com/bvn_dota2"
end
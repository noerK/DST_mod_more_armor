PrefabFiles = {
    "armor_stone",
	"armor_bone"
}

Assets =
{
	Asset("ATLAS", "images/inventoryimages/armor_stone.xml"),
	Asset("ATLAS", "images/inventoryimages/armor_bone.xml"),
}

local Ingredient = GLOBAL.Ingredient
local RECIPETABS = GLOBAL.RECIPETABS
local STRINGS = GLOBAL.STRINGS
local TECH = GLOBAL.TECH

STRINGS.NAMES.ARMOR_STONE = "Stone Suit"
STRINGS.RECIPE_DESC.ARMOR_STONE = "Improve your Log Suit with Rocks"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ARMOR_STONE = "A more 'stoney' Log Suit"

STRINGS.NAMES.ARMOR_BONE = "Bone Suit"
STRINGS.RECIPE_DESC.ARMOR_BONE = "Improve your Stone Suit with Bones"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ARMOR_BONE = "A more 'boney' Stone Suit"

local ARMOR_STONE_INGREDIENT_ROCKS = GetModConfigData("ARMOR_STONE_INGREDIENT_ROCKS")
local ARMOR_STONE_INGREDIENT_ROPE = GetModConfigData("ARMOR_STONE_INGREDIENT_ROPE")

local ARMOR_BONE_INGREDIENT_BONES = GetModConfigData("ARMOR_BONE_INGREDIENT_BONES")
local ARMOR_BONE_INGREDIENT_ROPE = GetModConfigData("ARMOR_BONE_INGREDIENT_ROPE")

local armor_stone = GLOBAL.Ingredient("armor_stone", 1)
armor_stone.atlas = "images/inventoryimages/armor_stone.xml"

AddRecipe(
	"armor_stone", { 
		Ingredient("armorwood", 1), 
		Ingredient("rope", ARMOR_STONE_INGREDIENT_ROPE), 
		Ingredient("rocks", ARMOR_STONE_INGREDIENT_ROCKS)
	}, 
	RECIPETABS.WAR, 
	{
		SCIENCE = 2
	},
	nil,
	nil,
	nil,
	nil,
	nil,
	"images/inventoryimages/armor_stone.xml"
)

AddRecipe(
	"armor_bone", { 
		armor_stone, 
		Ingredient("rope", ARMOR_BONE_INGREDIENT_ROPE), 
		Ingredient("boneshard", ARMOR_BONE_INGREDIENT_BONES)
	}, 
	RECIPETABS.WAR, 
	{
		SCIENCE = 2
	},
	nil,
	nil,
	nil,
	nil,
	nil,
	"images/inventoryimages/armor_bone.xml"
)
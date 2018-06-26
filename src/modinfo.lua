name = "More Armor"
description = "Adds Stone & Bone to the Log Suit. No value changes. The new recipies just provide versions of the log suit with improved durability." ..
"/n/n Now supports Armor Repair Kit (https://steamcommunity.com/sharedfiles/filedetails/?id=1155672829)"
author = "noerK"
version = "1.0.1b"

forumthread = "http://steamcommunity.com/sharedfiles/filedetails/?id=1153998909"

dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = true
all_clients_require_mod = true
client_only_mod = false

api_version = 10

icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = {
    "armor_stone",
    "armor_bone"
}

priority = 1

local OPTIONS_DAMAGE_REDUCTION_VALUE = {
    {
        description = "70%",
        data = 0.7
    },
    {
        description = "75%",
        data = 0.75
    },
    {
        description = "80%",
        data = 0.8
    },
    {
        description = "85%",
        data = 0.85
    },
    {
        description = "90%",
        data = 0.9
    },
    {
        description = "95%",
        data = 0.95
    },
    {
        description = "100%",
        data = 1
    }
}

local OPTIONS_INGREDIENT_VALUE = {
    {
        description = "1",
        data = 1
    },
    {
        description = "2",
        data = 2
    },
    {
        description = "3",
        data = 3
    },
    {
        description = "4",
        data = 4
    },
    {
        description = "5",
        data = 5
    },
    {
        description = "6",
        data = 6
    },
    {
        description = "7",
        data = 7
    },
    {
        description = "8",
        data = 8
    },
    {
        description = "9",
        data = 9
    },
    {
        description = "10",
        data = 10
    }
}

local OPTIONS_DURABILITY_MULTIPLICATOR = {
    {
        description = "1x",
        data = 1
    },
    {
        description = "1.5x",
        data = 1.5
    },
    {
        description = "2x",
        data = 2
        },
    {
        description = "2.5x",
        data = 2.5
    },
    {
        description = "3x",
        data = 3
        },
    {
        description = "3.5x",
        data = 3.5
    },
    {
        description = "4x",
        data = 4
    },
    {
        description = "4.5x",
        data = 4.5
    },
    {
        description = "5x",
        data = 5
    },
    {
        description = "5.5x",
        data = 5.5
    },
    {
        description = "6x",
        data = 6
    },
    {
        description = "6.5x",
        data = 6.5
    },
    {
        description = "7x",
        data = 7
    },
    {
        description = "7.5x",
        data = 7.5
    },
    {
        description = "8x",
        data = 8
    },
    {
        description = "8.5x",
        data = 8.5
    },
    {
        description = "9x",
        data = 9
    },
    {
        description = "9.5x",
        data = 9.5
    },
    {
        description = "10x",
        data = 10
    }
}

local function OptionTitle(title)
	return {
		name = title,
		options = {{description = "", data = 0}},
		default = 0,
	}
end
local SPACER = OptionTitle("")

configuration_options = {
    OptionTitle("STONE SUIT CONFIG:"),
    {
        name = "ARMOR_STONE_BLOCK_VALUE",
        label = "Stone Suit damage reduction",
        options = OPTIONS_DAMAGE_REDUCTION_VALUE,
        default = 0.8,
    },
    {
        name = "ARMOR_STONE_DURABILITY_MULTIPLICATOR",
        label = "Stone Suit durability",
        hover = "The durability will be calculated by this multiplicator and the durability of the Log Suit",
        options = OPTIONS_DURABILITY_MULTIPLICATOR,
        default = 2.5,
    },
    {
        name = "ARMOR_STONE_INGREDIENT_ROCKS",
        label = "Stone Suit Rocks needed",
        options = OPTIONS_INGREDIENT_VALUE,
        default = 6,
    },
    {
        name = "ARMOR_STONE_INGREDIENT_ROPE",
        label = "Stone Suit Rope needed",
        options = OPTIONS_INGREDIENT_VALUE,
        default = 2,
    },
    SPACER,
    OptionTitle("BONE SUIT CONFIG:"),
    {
        name = "ARMOR_BONE_BLOCK_VALUE",
        label = "Bone armor damage reduction",
        options = OPTIONS_DAMAGE_REDUCTION_VALUE,
        default = 0.8,
    },
    {
        name = "ARMOR_BONE_DURABILITY_MULTIPLICATOR",
        label = "Bone Suit durability",
        hover = "The durability will be calculated by this multiplicator and the durability of the Log Suit",
        options = OPTIONS_DURABILITY_MULTIPLICATOR,
        default = 5,
    },
    {
        name = "ARMOR_BONE_INGREDIENT_BONES",
        label = "Bone Suit Bone Shards needed",
        options = OPTIONS_INGREDIENT_VALUE,
        default = 6,
    },
    {
        name = "ARMOR_BONE_INGREDIENT_ROPE",
        label = "Bone Suit Rope needed",
        options = OPTIONS_INGREDIENT_VALUE,
        default = 2,
    }
}


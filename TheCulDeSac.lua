local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "FULL MENU",
    LoadingTitle = "",
    LoadingSubtitle = "",
    ConfigurationSaving = {Enabled = false}
})

-- UNIVERSAL FUNCTION
local function CreateSummon(Tab, list, default)
    local selected = default
    local amount = 1

    Tab:CreateDropdown({
        Name = "Select",
        Options = list,
        CurrentOption = {default},
        Searchable = true,
        Callback = function(opt)
            selected = opt[1]
        end
    })

    Tab:CreateInput({
        Name = "Amount",
        PlaceholderText = "Number",
        RemoveTextAfterFocusLost = false,
        Callback = function(txt)
            amount = tonumber(txt) or 1
        end
    })

    Tab:CreateButton({
        Name = "Summon",
        Callback = function()
            game:GetService("ReplicatedStorage")
                :WaitForChild("ClientToServer")
                :WaitForChild("DataEvents")
                :WaitForChild("ChangeData")
                :FireServer(
                    "StorylineAdvanced",
                    "Sharpe",
                    {
                        {name = selected, amount = amount}
                    }
                )
        end
    })
end

-- WEAPONS
local WeaponsTab = Window:CreateTab("Weapons", 4483362458)
CreateSummon(WeaponsTab,{
"Branch Sword","Broken Oath","Claw Magnifique","Crystal Sword",
"Devious Blade","Drifter's Hook","Emerald Sword","Flesh",
"Gatekeeper","Gold Sword","Iron Sword","Leviathan Lance",
"Lollipop Mace","Midnight Blade","Nine Lives Cutlass",
"Oathkeeper's Claymore","Old Sword","Poison Bazooka",
"Poison Greatsword","Second Flame","Spectral Sword",
"Stillness","Sunflare","Turmoil","Winged Halberd",
"Cul De Scythe","Hand Cannon","Hunger","Overclock"
},"Turmoil")

-- USABLES
local UsablesTab = Window:CreateTab("Usables", 4483362458)
CreateSummon(UsablesTab,{
"Axe Wax","Bait","Briars Brew","Burning Tea","Cave Candy",
"Cheese","Chocolate Hearts","Drill","Dynamite","Enchant Capsule",
"EXP Book","Fortune Bag","Golden Sap","Goodie Bag",
"Heart Capsule","Hot Coffee","Incense","Item Orb",
"Luck Capsule","Magic Beans","Material Orb","Meat Bundle",
"Mega XP Orb","Mind Capsule","Mining Charm","Release Pack",
"Resource Capsule","Shop Key","Speed Bonus","Speed Capsule",
"Super Lucky Charm","Teleport Watch","Totality","Treasure Bag",
"Very Lucky Charm","Watermelon","Whetstone","XP Orb",
"Zero Teleport Pad Cooldown"
},"Bait")

-- PICKAXES
local PickaxeTab = Window:CreateTab("Pickaxes", 4483362458)
CreateSummon(PickaxeTab,{
"Boomstick","Burden","Burning Resolve","Clay","Crystal Pickaxe",
"Emerald Pickaxe","Endless Growth","Gold Pickaxe","Grind",
"King Aurum's Scepter","Old Pickaxe","Paradox Pickaxe",
"Prism Pickaxe","Spine Pickaxe","Sweet Ache","Winter's Edge"
},"Old Pickaxe")

-- NETS
local NetsTab = Window:CreateTab("Nets", 4483362458)
CreateSummon(NetsTab,{
"Arachnet","Crystal Net","Dreamcatcher Net","Drowned Verse",
"Gold Net","Hollow","Old Net","Passion","Woven Fault"
},"Old Net")

-- RODS
local RodsTab = Window:CreateTab("Rods", 4483362458)
CreateSummon(RodsTab,{
"Crystal Rod","Duo Rod","Ego","Gold Rod","Meteorite Rod",
"Old Rod","Reflection","Shell","Thunder Trident",
"Water's Reach","Whaleheart"
},"Old Rod")

-- AXES
local AxesTab = Window:CreateTab("Axes", 4483362458)
CreateSummon(AxesTab,{
"Crystal Axe","Dawn Decapitator","Emerald Axe","Force",
"Frostbite Axe","Gold Axe","Iron Axe","Logsplitter",
"Old Axe","Pressurizer","Pumpkin Cleaver",
"Rebirth's Requiem","Restraint","Rotten Axe","Sapling"
},"Old Axe")

-- HOES
local HoesTab = Window:CreateTab("Hoes", 4483362458)
CreateSummon(HoesTab,{
"Infernal Hoe","Love","Pitchfork","Scythe","Seed",
"Sunkeeper","Windbloom Shears","Yearn"
},"Scythe")

-- TITLES
local TitlesTab = Window:CreateTab("Titles", 4483362458)
CreateSummon(TitlesTab,{
"Alpha Tester","Angler","Awestruck","Beastmaster","Bee Keeper",
"Bookworm","Cave Master","Champion","Conqueror","Critter Caller",
"Crown Jewel","Delver","Demon Of Heaven","Depth Of All",
"Dragon's Ally","Enchanted","Farmer","Fighter","Fisherman",
"Forester","Heart Of All","Heart Of Gold","Helldiver",
"Jack Of All Trades","Logger","Lumberjack","Master Farmer",
"Master Fighter","Master Fisher","Master Miner","Money Bags",
"Oathkeeper","Ore Warden","Scavenger","Seeker","Slayer",
"Swordsman","Tamer","The Grubslayer","Trapper","Trawler",
"Warrior","Wayfinder","Wildling","Wise One"
},"Farmer")

-- MOUNTS
local MountsTab = Window:CreateTab("Mounts", 4483362458)
CreateSummon(MountsTab,{
"Bike","Bone Dragon Mount","Breacher Mount","Cloudtail",
"Go Kart","Hover Board","Hot Air Balloon","Rollerblades",
"Scooter","Toy Boat","VIP Mount"
},"Bike")

-- HOUSE THEMES (RENAMED)
local HousesTab = Window:CreateTab("House Themes", 4483362458)
CreateSummon(HousesTab,{
"Default House","Dream House","Frost House","Gingerbread House",
"Gothic House","Mushroom House","Pumpkin House","Ruins House",
"Valentine House","Vampire House","Water House","Zen House"
},"Default House")

-- ESSENCE
local EssenceTab = Window:CreateTab("Essence", 4483362458)
CreateSummon(EssenceTab,{
"Fire Essence","Water Essence","Nature Essence","Light Essence",
"Dark Essence","Electric Essence","Ice Essence","Poison Essence"
},"Fire Essence")

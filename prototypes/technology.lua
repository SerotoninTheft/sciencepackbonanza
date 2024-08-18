local function string_to_seed(s)
    local seed = 0
    for i = 1, #s do
        seed = seed + string.byte(s, i) * i
    end
    return seed
end

local function add_optional_packs(technology)
    if technology.unit and technology.unit.ingredients then
        local needs_automation = false
        for _, ingredient in pairs(technology.unit.ingredients) do
            if ingredient[1] == "automation-science-pack" then
                needs_automation = true
                break
            end
        end

        if needs_automation then
            -- Seed random based on technology name for reproducibility
            math.randomseed(string_to_seed(technology.name))

            -- 70% chance to add Manufacturing Science Pack
            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-manufacturing-science-pack", 1})
            end

            -- 70% chance to add Industry Science Pack
            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-industry-science-pack", 1})
            end

            -- 70% chance to add Upkeep Science Pack
            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-upkeep-science-pack", 1})
            end
        end


        local needs_logistic = false
        for _, ingredient in pairs(technology.unit.ingredients) do
            if ingredient[1] == "logistic-science-pack" then
                needs_logistic = true
                break
            end
        end

        if needs_logistic then
            math.randomseed(string_to_seed(technology.name))

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-control-science-pack", 1})
            end

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-execution-science-pack", 1})
            end

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-system-science-pack", 1})
            end
        end

        local needs_military = false
        for _, ingredient in pairs(technology.unit.ingredients) do
            if ingredient[1] == "military-science-pack" then
                needs_military = true
                break
            end
        end

        if needs_military then
            math.randomseed(string_to_seed(technology.name))

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-ammunition-science-pack", 1})
            end

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-expulsion-science-pack", 1})
            end
        end


        local needs_chemical = false
        for _, ingredient in pairs(technology.unit.ingredients) do
            if ingredient[1] == "chemical-science-pack" then
                needs_chemical = true
                break
            end
        end

        if needs_chemical then
            math.randomseed(string_to_seed(technology.name))

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-complication-science-pack", 1})
            end

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-communication-science-pack", 1})
            end

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-expansion-science-pack", 1})
            end
        end


        local needs_production = false
        for _, ingredient in pairs(technology.unit.ingredients) do
            if ingredient[1] == "production-science-pack" then
                needs_production = true
                break
            end
        end

        if needs_production then
            math.randomseed(string_to_seed(technology.name))

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-precision-science-pack", 1})
            end

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-instrumentation-science-pack", 1})
            end

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-hazardous-science-pack", 1})
            end
        end

        local needs_utility = false
        for _, ingredient in pairs(technology.unit.ingredients) do
            if ingredient[1] == "utility-science-pack" then
                needs_utility = true
                break
            end
        end

        if needs_utility then
            math.randomseed(string_to_seed(technology.name))

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-composites-science-pack", 1})
            end

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-electromagnetic-science-pack", 1})
            end

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-dynamics-science-pack", 1})
            end
        end

        local needs_space = false
        for _, ingredient in pairs(technology.unit.ingredients) do
            if ingredient[1] == "space-science-pack" then
                needs_space = true
                break
            end
        end

        if needs_space then
            math.randomseed(string_to_seed(technology.name))

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-offense-science-pack", 1})
            end

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-fabrication-science-pack", 1})
            end

            if math.random() < 0.7 then
                table.insert(technology.unit.ingredients, {"sero-physics-science-pack", 1})
            end
        end

    end
end

-- Iterate over all technologies
for _, technology in pairs(data.raw.technology) do
    add_optional_packs(technology)
end










local function add_all_science_packs_to_infinite_research(technology)
    if technology.unit and technology.unit.ingredients and technology.max_level == "infinite" then
        -- Add all the custom science packs to the infinite research
        local science_packs = {
            "sero-manufacturing-science-pack",
            "sero-industry-science-pack",
            "sero-upkeep-science-pack",
            "sero-control-science-pack",
            "sero-execution-science-pack",
            "sero-system-science-pack",
            "sero-ammunition-science-pack",
            "sero-expansion-science-pack",
            "sero-precision-science-pack",
            "sero-instrumentation-science-pack",
            "sero-hazardous-science-pack",
            "sero-composites-science-pack",
            "sero-electromagnetic-science-pack",
            "sero-dynamics-science-pack",
            "sero-expulsion-science-pack",
            "sero-complication-science-pack",
            "sero-communication-science-pack",
            "sero-offense-science-pack",
            "sero-fabrication-science-pack",
            "sero-physics-science-pack"
        }

        -- Add each science pack to the ingredients if it's not already there
        for _, science_pack in pairs(science_packs) do
            local already_included = false
            for _, ingredient in pairs(technology.unit.ingredients) do
                if ingredient[1] == science_pack then
                    already_included = true
                    break
                end
            end
            if not already_included then
                table.insert(technology.unit.ingredients, {science_pack, 1})
            end
        end
    end
end

-- Iterate over all technologies and apply the function to infinite research
for _, technology in pairs(data.raw.technology) do
    add_all_science_packs_to_infinite_research(technology)
end









local function add_recipes_to_technology(technology_name, recipes)
    local technology = data.raw.technology[technology_name]
    
    if technology then
        for _, recipe in ipairs(recipes) do
            table.insert(technology.effects, {
                type = "unlock-recipe",
                recipe = recipe
            })
        end
    end
end

-- Unlock Ammunition and Expulsion with Military
add_recipes_to_technology("military-science-pack", {
    "sero-ammunition-science-pack",
    "sero-expulsion-science-pack"
})

-- Unlock Complication, Communication, and Expansion with Chemical
add_recipes_to_technology("chemical-science-pack", {
    "sero-complication-science-pack",
    "sero-communication-science-pack",
    "sero-expansion-science-pack"
})

-- Unlock Precision, Instrumentation, and Hazardous with Production
add_recipes_to_technology("production-science-pack", {
    "sero-precision-science-pack",
    "sero-instrumentation-science-pack",
    "sero-hazardous-science-pack"
})

-- Unlock Composites, Electromagnetic, and Dynamics with Utility
add_recipes_to_technology("utility-science-pack", {
    "sero-composites-science-pack",
    "sero-electromagnetic-science-pack",
    "sero-dynamics-science-pack"
})

-- Unlock Offense, Fabrication, and Physics with Space
add_recipes_to_technology("space-science-pack", {
    "sero-offense-probe",
    "sero-fabrication-probe",
    "sero-physics-probe"
})

-- Ensure Logistic Science unlocks System, Execution, and Control
add_recipes_to_technology("logistic-science-pack", {
    "sero-system-science-pack",
    "sero-execution-science-pack",
    "sero-control-science-pack"
})

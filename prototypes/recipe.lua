local function create_recipe(name, ingredients, result_count, enabled)
    return {
        type = "recipe",
        name = name,
        enabled = enabled or false,
        energy_required = 10,
        ingredients = ingredients,
        result = name,
        result_count = result_count
    }
end

data:extend({
    create_recipe("sero-manufacturing-science-pack", {
        {"copper-cable", 3},
        {"iron-stick", 4},
        {"iron-gear-wheel", 3},
        {"electronic-circuit", 4},
        {"copper-plate", 3}
    }, 20, true),  -- Enabled at the start

    create_recipe("sero-upkeep-science-pack", {
        {"repair-pack", 2},
        {"inserter", 1},
        {"pipe-to-ground", 2},
        {"iron-chest", 1},
        {"radar", 1},
        {"firearm-magazine", 2}
    }, 30, true),  -- Enabled at the start

    create_recipe("sero-industry-science-pack", {
        {"boiler", 1},
        {"steam-engine", 1},
        {"stone-furnace", 3},
        {"lab", 1},
        {"burner-mining-drill", 1}
    }, 40, true),  -- Enabled at the start
    
    create_recipe("sero-control-science-pack", {
        {"underground-belt", 1},
        {"splitter", 2},
        {"filter-inserter", 1},
        {"long-handed-inserter", 2},
        {"gun-turret", 1},
        {"stone-wall", 2}
    }, 30),
    create_recipe("sero-execution-science-pack", {
        {"submachine-gun", 1},
        {"shotgun-shell", 2},
        {"steel-plate", 3},
        {"fast-inserter", 2},
        {"assembling-machine-1", 1}
    }, 30),
    create_recipe("sero-system-science-pack", {
        {"steel-chest", 1},
        {"iron-chest", 1},
        {"small-lamp", 1},
        {"light-armor", 1},
        {"pipe", 5},
        {"electric-mining-drill", 1}
    }, 30),
    create_recipe("sero-ammunition-science-pack", {
        {"piercing-rounds-magazine", 1},
        {"sulfur", 2},
        {"explosives", 2},
        {"grenade", 1}
    }, 30),
    create_recipe("sero-expulsion-science-pack", {
        {"cliff-explosives", 5},
        {"rail-chain-signal", 2},
        {"arithmetic-combinator", 1},
        {"fast-underground-belt", 1}
    }, 30),
    create_recipe("sero-complication-science-pack", {
        {"belt-immunity-equipment", 2},
        {"night-vision-equipment", 2},
        {"gate", 1},
        {"battery-equipment", 1},
        {"solid-fuel", 5},
        {"red-wire", 2},
        {"green-wire", 3}
    }, 30),
    create_recipe("sero-communication-science-pack", {
        {"programmable-speaker", 1},
        {"power-switch", 2},
        {"concrete", 5},
        {"hazard-concrete", 5},
        {"fast-splitter", 1},
        {"big-electric-pole", 1},
    }, 30),
    create_recipe("sero-expansion-science-pack", {
        {"fast-transport-belt", 5},
        {"car", 1},
        {"battery", 1},
        {"solar-panel-equipment", 1},
        {"steel-furnace", 1},
        {"oil-refinery", 1},
        {"stack-inserter", 1},
    }, 50),
    create_recipe("sero-precision-science-pack", {
        {"stack-filter-inserter", 1},
        {"pump", 1},
        {"logistic-robot", 1},
        {"assembling-machine-2", 1},
        {"effectivity-module", 1}
    }, 20),
    create_recipe("sero-instrumentation-science-pack", {
        {"speed-module", 1},
        {"pumpjack", 1},
        {"heat-exchanger", 1},
        {"logistic-chest-passive-provider", 1},
        {"storage-tank", 1},
        {"cliff-explosives", 1},
        {"electric-engine-unit", 3}
    }, 30),
    create_recipe("sero-hazardous-science-pack", {
        {"chemical-plant", 1},
        {"uranium-fuel-cell", 3},
        {"logistic-chest-storage", 1},
        {"explosive-rocket", 3},
        {"flamethrower-ammo", 1},
        {"discharge-defense-equipment", 1},
    }, 100),
    create_recipe("sero-composites-science-pack", {
        {"productivity-module-2", 1},
        {"rocket-fuel", 1},
        {"uranium-235", 1},
        {"slowdown-capsule", 3},
        {"refined-concrete", 5},
        {"refined-hazard-concrete", 5},
        {"heat-pipe", 1},
    }, 40),
    create_recipe("sero-electromagnetic-science-pack", {
        {"construction-robot", 2},
        {"energy-shield-equipment", 1},
        {"distractor-capsule", 2},
        {"accumulator", 1},
        {"constant-combinator", 2},
        {"substation", 1}
    }, 40),
    create_recipe("sero-dynamics-science-pack", {
        {"personal-roboport-equipment", 1},
        {"tank", 1},
        {"exoskeleton-equipment", 1},
        {"discharge-defense-remote", 10},
        {"laser-turret", 1},
        {"rocket-launcher", 2},
    }, 80),
    create_recipe("sero-offense-probe", {
        {"satellite", 1},
        {"locomotive", 1},
        {"artillery-wagon", 5},
        {"artillery-shell", 100},
        {"fusion-reactor-equipment", 1},
        {"artillery-turret", 2}
    }, 1),
    create_recipe("sero-fabrication-probe", {
        {"satellite", 1},
        {"assembling-machine-3", 5},
        {"speed-module-3", 1},
        {"productivity-module-3", 1},
        {"effectivity-module-3", 1},
        {"nuclear-reactor", 1},
        {"centrifuge", 5}
    }, 1),
    create_recipe("sero-physics-probe", {
        {"satellite", 1},
        {"personal-roboport-mk2-equipment", 1},
        {"destroyer-capsule", 3},
        {"cluster-grenade", 20},
        {"power-armor-mk2", 1}
    }, 1)
})

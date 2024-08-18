local function create_science_pack(name, order)
    return {
        type = "tool",
        name = name,
        icon = "__sciencepackbonanza__/graphics/" .. name .. ".png",
        icon_size = 64,
        subgroup = "science-pack",
        order = order,
        stack_size = 3000,
        durability = 1,
    }
end

data:extend({
    -- Automation-tier packs (Order a)
    create_science_pack("sero-manufacturing-science-pack", "a[sero-manufacturing-science-pack]"),
    create_science_pack("sero-upkeep-science-pack", "a[sero-upkeep-science-pack]"),
    create_science_pack("sero-industry-science-pack", "a[sero-industry-science-pack]"),

    -- Logistic-tier packs (Order b)
    create_science_pack("sero-control-science-pack", "b[sero-control-science-pack]"),
    create_science_pack("sero-execution-science-pack", "b[sero-execution-science-pack]"),
    create_science_pack("sero-system-science-pack", "b[sero-system-science-pack]"),

    -- Military-tier packs (Order c)
    create_science_pack("sero-ammunition-science-pack", "c[sero-ammunition-science-pack]"),
    create_science_pack("sero-expulsion-science-pack", "c[sero-expulsion-science-pack]"),

    -- Chemical-tier packs (Order d)
    create_science_pack("sero-complication-science-pack", "d[sero-complication-science-pack]"),
    create_science_pack("sero-communication-science-pack", "d[sero-communication-science-pack]"),
    create_science_pack("sero-expansion-science-pack", "d[sero-expansion-science-pack]"),

    -- Production-tier packs (Order e)
    create_science_pack("sero-precision-science-pack", "e[sero-precision-science-pack]"),
    create_science_pack("sero-instrumentation-science-pack", "e[sero-instrumentation-science-pack]"),
    create_science_pack("sero-hazardous-science-pack", "e[sero-hazardous-science-pack]"),

    -- Utility-tier packs (Order f)
    create_science_pack("sero-composites-science-pack", "f[sero-composites-science-pack]"),
    create_science_pack("sero-electromagnetic-science-pack", "f[sero-electromagnetic-science-pack]"),
    create_science_pack("sero-dynamics-science-pack", "f[sero-dynamics-science-pack]"),

    -- Space-tier packs (Order g)
    create_science_pack("sero-offense-science-pack", "g[sero-offense-science-pack]"),
    create_science_pack("sero-fabrication-science-pack", "g[sero-fabrication-science-pack]"),
    create_science_pack("sero-physics-science-pack", "g[sero-physics-science-pack]")
})



data:extend({
    {
        type = "item",
        name = "sero-offense-probe",
        icon = "__sciencepackbonanza__/graphics/sero-offense-probe.png",
        icon_size = 64,
        subgroup = "space-related",
        order = "m[satellite2]",
        stack_size = 1,
        rocket_launch_product = {"sero-offense-science-pack", 3000}  -- Adjust to the corresponding science pack
    },
    {
        type = "item",
        name = "sero-fabrication-probe",
        icon = "__sciencepackbonanza__/graphics/sero-fabrication-probe.png",
        icon_size = 64,
        subgroup = "space-related",
        order = "m[satellite3]",
        stack_size = 1,
        rocket_launch_product = {"sero-fabrication-science-pack", 3000}  -- Adjust to the corresponding science pack
    },
    {
        type = "item",
        name = "sero-physics-probe",
        icon = "__sciencepackbonanza__/graphics/sero-physics-probe.png",
        icon_size = 64,
        subgroup = "space-related",
        order = "m[satellite4]",
        stack_size = 1,
        rocket_launch_product = {"sero-physics-science-pack", 3000}  -- Adjust to the corresponding science pack
    }
})

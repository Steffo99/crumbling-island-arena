modifier_undying_q_health = class({})
local self = modifier_undying_q_health

function self:DeclareFunctions()
    local funcs = {
        MODIFIER_PROPERTY_HEALTH_BONUS,
        MODIFIER_PROPERTY_MODEL_SCALE
    }

    return funcs
end

function self:GetModifierHealthBonus(params)
    return 1
end

function self:GetAttributes()
    return MODIFIER_ATTRIBUTE_MULTIPLE
end

function self:GetModifierModelScale()
    return 15
end
lc_e = class({})

LinkLuaModifier("modifier_lc_e_animation", "abilities/lc/modifier_lc_e_animation", LUA_MODIFIER_MOTION_NONE)

function lc_e:OnSpellStart()
    local hero = self:GetCaster().hero
    local target = hero:GetPos() + hero:GetFacing() * hero.unit:GetIdealSpeed()

    hero:AddNewModifier(hero, self, "modifier_lc_e_animation", {})

    Dash(hero, target, 1200, {
        modifier = { name = "modifier_lc_e_animation", ability = self },
        hitParams = {
            modifier = { name = "modifier_stunned", ability = self, duration = 0.7 }
        }
    })

    hero:EmitSound("Arena.LC.CastE")
end
modifier_remnant = class({})

function modifier_remnant:OnCreated(kv)
	self.keys = kv
end

function modifier_remnant:CheckState()
	local state = {
		[MODIFIER_STATE_INVULNERABLE] = true,
		[MODIFIER_STATE_NO_HEALTH_BAR] = true,
		[MODIFIER_STATE_NO_UNIT_COLLISION] = true,
		[MODIFIER_STATE_NOT_ON_MINIMAP] = true,
		[MODIFIER_STATE_UNSELECTABLE] = true,
		[MODIFIER_STATE_COMMAND_RESTRICTED] = true
	}

	return state
end

function modifier_remnant:IsHidden()
	return true
end

function modifier_remnant:GetEffectName()
	return self.keys.effect
end

function modifier_remnant:GetEffectAttachType()
	return PATTACH_ABSORIGIN_FOLLOW
end
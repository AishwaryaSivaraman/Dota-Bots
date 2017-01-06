
----------------------------------------------------------------------------------------------------
local Abilities{
    "phantom_assassin_stifling_dagger",
    "phantom_assassin_phantom_strike",
    "phantom_assassin_blur",
    "phantom_assassin_coup_de_grace"
}

local function useDagger()
    local npcBot = GetBot();
    local abilityName = npcBot:GetAbilityByName(Abilities[1])

    print("PA using dagger now")    

    -- Get some of its values
	local nCastRange = abilityLB:GetCastRange();
	

    if (not ability:IsFullyCastable() ) then
        return false
    end

    return true
end

local function useStrike()
    --dont use in the first game
    print("PA never uses W ")
end

function AbilityUsageThink()
    
   local npcBot = GetBot();

	-- Check if we're already using an ability
	if ( npcBot:IsUsingAbility() ) then return end;

    if npcBot:IsUsingAbility() or npcBot:IsChanneling() then
		return;
	end

    if npcBot:GetActiveMode()==BOT_MODE_RETREAT then
		return;
	end

    if useDagger() then
		npcBot:Action_UseAbilityOnEntity(ability,npcBot);
        npcBot:Action_Chat("Well my dagger is sharp ain't it",true);	
	end

end    


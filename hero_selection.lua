

----------------------------------------------------------------------------------------------------

function Think()
	if ( GetTeam() == TEAM_RADIANT )
	then
		print( "selecting radiant" );
		SelectHero( 0, "npc_dota_hero_axe" );
		SelectHero( 1, "npc_dota_hero_lina" );
		SelectHero( 2, "npc_dota_hero_sniper" );
		SelectHero( 3, "npc_dota_hero_bloodseeker" );
		SelectHero( 4, "npc_dota_hero_crystal_maiden" );
	elseif ( GetTeam() == TEAM_DIRE )
	then
		print( "selecting dire" );
		SelectHero( 5, "npc_dota_hero_drow_ranger" );
		SelectHero( 6, "npc_dota_hero_earthshaker" );
		SelectHero( 7, "npc_dota_hero_juggernaut" );
		SelectHero( 8, "npc_dota_hero_phantom_assassin" );
		SelectHero( 9, "npc_dota_hero_skeleton_king" );
	end

end

----------------------------------------------------------------------------------------------------
function UpdateLaneAssignments()

 if ( GetTeam() == TEAM_RADIANT )
    then
        return {
        [1] = LANE_MID, --lina
        [0] = LANE_BOT, --sniper
        [2] = LANE_TOP, --BS
        [3] = LANE_TOP,--axe
        [4] = LANE_BOT,--CM
        };
    elseif ( GetTeam() == TEAM_DIRE )
    then
        return {
        [5] = LANE_MID,--Drow
        [6] = LANE_BOT,--Jug
        [7] = LANE_TOP,--earthshaker
        [8] = LANE_TOP,--Wraith
        [9] = LANE_BOT,--PA
        };
    end

end


local tableItemsToBuy = { 
				"item_tango",
				"item_phase_boots",
				"item_clarity",								
				"item_magic_stick",
				"item_bottle",				
				"item_dust",
				"item_aether_lens",
				"item_ultimate_scepter",
				"item_cyclone",
				"item_force_staff",
				"item_sheepstick",
				"item_invis_sword",
				"item_travel_boots_1"
			};


----------------------------------------------------------------------------------------------------

function ItemPurchaseThink()

	local npcBot = GetBot();

	if ( #tableItemsToBuy == 0 )
	then
		npcBot:SetNextItemPurchaseValue( 0 );
		return;
	end

	local sNextItem = tableItemsToBuy[1];

	npcBot:SetNextItemPurchaseValue( GetItemCost( sNextItem ) );

	if ( npcBot:GetGold() >= GetItemCost( sNextItem ) )
	then
		npcBot:Action_PurchaseItem( sNextItem );
		table.remove( tableItemsToBuy, 1 );
	end

end

----------------------------------------------------------------------------------------------------

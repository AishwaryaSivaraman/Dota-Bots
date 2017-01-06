

local tableItemsToBuy = { 
				"item_tango",
				"item_phase_boots",
				"item_poor_mans_shield",								
				"item_basher",
				"item_blade_mail",				
				"item_black_king_bar",
				"item_assault",
				"item_abyssal_blade",
				"item_heart",
				"item_rapier",
				"item_sheepstick"				
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

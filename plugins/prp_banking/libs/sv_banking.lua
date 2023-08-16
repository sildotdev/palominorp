PRP.Banking = PRP.Banking or {}

-- Create a new bank account
function PRP.Banking.Create( cCharacter, fnCallback )
    ix.inventory.New( 0, "banking_character", function( oInventory )
        if ( oInventory ) then
            if fnCallback then
                fnCallback( oInventory )
            end

            cCharacter:SetData( "banking_inventory_id", oInventory:GetID() )
        end
    end )
end

-- Get a character's banking inventory
function PRP.Banking.Get( cCharacter, fnCallback )
    local nInventoryID = cCharacter:GetData( "banking_inventory_id" )

    if ( nInventoryID ) then
        return ix.item.inventories[ nInventoryID ]
    end
end

-- Access a character's banking inventory
function PRP.Banking.Open( cCharacter )
    local oInventory = PRP.Banking.Get( cCharacter )

    if not oInventory then return end

    ix.storage.Open( cCharacter:GetPlayer(), oInventory, {
        entity = cCharacter:GetPlayer(),
        name = "Bank Account"
    } )
end
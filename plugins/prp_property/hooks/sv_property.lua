local PLUGIN = PLUGIN

-- @TODO: Find a better hook for this.
hook.Add( "InitializedPlugins", "PRP.Property.InitializedPlugins", function()
    -- @TODO: Config option for rent payment interval.
    timer.Create( "PRP.Property.RentPayments", 10, 0, function()
        print( "Processing rent payments..." )

        for _, pPlayer in ipairs( player.GetAll() ) do
            print( "Processing rent payments for " .. pPlayer:Name() .. "..." )
            if not pPlayer:GetCharacter() then continue end

            local cCharacter = pPlayer:GetCharacter()
            local iRent = 0

            for _, oProperty in pairs( cCharacter:GetRentedProperties() ) do
                print( "Processing rent payment for " .. oProperty:GetName() .. "..." )
                iRent = iRent + oProperty:GetRent()
            end

            print( "Rent to pay: " .. iRent )

            if iRent > 0 then
                -- @TODO: Possible way to exploit and achieve 1/2 rent by going back and forth between having and not having money. Not that big of a deal imo.
                -- @TODO: If player doesn't have enough money, kick them out of the property.
                if not cCharacter:HasMoney( iRent ) then
                    if cCharacter.m_bWarnedRent then
                        -- @TODO: Double for loop. Any way we can make this better?
                        for _, oProperty in pairs( cCharacter:GetRentedProperties() ) do
                            oProperty:UnRent()
                        end

                        pPlayer:Notify( "You don't have enough money to pay your rent. Your properties have been unrented." )
                        continue
                    end

                    pPlayer:Notify( "You don't have enough money to pay your rent. Your properties will be unrented in the next payment cycle." )
                    cCharacter.m_bWarnedRent = true
                    continue
                end

                cCharacter:TakeMoney( iRent, "rent" )
                pPlayer:Notify( "You have paid " .. ix.currency.Get( iRent ) .. " in rent." )
                cCharacter.m_bWarnedRent = false
            end
        end
    end )
end )

function PLUGIN:PlayerLoadedCharacter( pPlayer, cCurrent, cPrevious )
    if cPrevious then
        for _, oProperty in pairs( cPrevious:GetRentedProperties() ) do
            oProperty:UnRent( true )
        end
    end
end

function PLUGIN:PlayerDisconnected( pPlayer )
    if not pPlayer:GetCharacter() then return end

    for _, oProperty in pairs( pPlayer:GetCharacter():GetRentedProperties() ) do
        oProperty:UnRent( true )
    end
end

-- F2 hook
function PLUGIN:ShowTeam( pPlayer )
    if not pPlayer:GetCharacter() then return end

    local tTrace = util.TraceLine( {
        start = pPlayer:GetShootPos(),
        endpos = pPlayer:GetShootPos() + pPlayer:GetAimVector() * 96,
        filter = pPlayer
    } )

    local eEntity = tTrace.Entity
    if not IsValid( eEntity ) or not eEntity:IsDoor() then return end

    local oProperty = eEntity:GetProperty()
    if not oProperty then return end

    if oProperty:GetRenter() then
        -- @TODO: Open property menu
    else
        -- Attempt to rent the property.
        oProperty:Rent( pPlayer )
    end
end
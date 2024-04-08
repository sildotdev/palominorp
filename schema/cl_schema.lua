-- Options

ix.option.Set( "observerTeleportBack", false )

PRP.UI = PRP.UI or {}
PRP.UI.ScaleFactor = ScrH() / 1080

PRP.UI.TEMP_PRPHTML = PRP.UI.TEMP_PRPHTML or nil

concommand.Add( "prp_openhtml", function( pPlayer, sCommand, tArgs, sArgs )
    -- local frame = vgui.Create( "DFrame" )
    -- frame:SetTitle( "HTML Test" )
    -- frame:MakePopup()

    if PRP.UI.TEMP_PRPHTML then
        PRP.UI.TEMP_PRPHTML:Remove()
        PRP.UI.TEMP_PRPHTML = nil
        return
    end

    PRP.UI.TEMP_PRPHTML = vgui.Create( "DHTML", frame )
    -- PRP.UI.TEMP_PRPHTML:Dock( FILL )
    PRP.UI.TEMP_PRPHTML:SetSize( 800, 450 )
    PRP.UI.TEMP_PRPHTML:SetPos( ScrW() - 800 - 10, ScrH() - 450 - 10 )
    PRP.UI.TEMP_PRPHTML:OpenURL( string.len(sArgs) > 5 and sArgs or "http://loopback.gmod:5500/myindex.html" )
    PRP.UI.TEMP_PRPHTML:MakePopup()
    PRP.UI.TEMP_PRPHTML.OnFinishLoadingDocument = function()
        PRP.UI.TEMP_PRPHTML:AddFunction( "palomino", "PlaySound", function( sSound )
            surface.PlaySound( sSound )
        end )

        PRP.UI.TEMP_PRPHTML:AddFunction( "palomino", "CloseFrame", function( sSound )
            PRP.UI.TEMP_PRPHTML:Remove()
            PRP.UI.TEMP_PRPHTML = nil
            gui.EnableScreenClicker( false )
        end )
    end
end )
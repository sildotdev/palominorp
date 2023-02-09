-- @TODO: Unify the map config into a single plugin

PRP.Vehicle.Parking.Register( "police_garage", {
    Spots = {
        -- Left side (vehicle entrance view side), from back
        {
            min = Vector(8817.580078125,8070.2768554688,-127.96875),
            max = Vector(8500.7783203125,8257.8916015625,31.968757629395),
            ang = Angle( 0, 90, 0 )
        },
        {
            min = Vector(8813.595703125,8452.771484375,-127.96875),
            max = Vector(8500.5517578125,8258.322265625,31.968757629395),
            ang = Angle( 0, 90, 0 )
        },
        {
            min = Vector(8818.53125,8534.9931640625,-127.96873474121),
            max = Vector(8500.8115234375,8721.37109375,31.968727111816),
            ang = Angle( 0, 90, 0 )
        },
        {
            min = Vector(8820.8662109375,8906.767578125,-127.96875),
            max = Vector(8500.8115234375,8721.37109375,31.968727111816),
            ang = Angle( 0, 90, 0 )
        },


        -- Right side, from back
        {
            min = Vector(7716.3256835938,7605.2348632813,-127.96874237061),
            max = Vector(8000.9545898438,7801.453125,31.96875),
            ang = Angle( 0, -90, 0 )
        },
        {
            min = Vector(7718.958984375,7993.6635742188,-127.96875),
            max = Vector(8000.9545898438,7801.453125,31.96875),
            ang = Angle( 0, -90, 0 )
        },
        {
            min = Vector(7719.609375,8266.919921875,-127.96875),
            max = Vector(8000.7138671875,8082.0283203125,31.968757629395),
            ang = Angle( 0, -90, 0 )
        },
        {
            min = Vector(7717.0961914063,8269.66796875,-127.96875762939),
            max = Vector(8000.341796875,8459.2451171875,31.96875),
            ang = Angle( 0, -90, 0 )
        },

        -- Back spot, for vans if we ever need them
        {
            min = Vector(8016.03125,7281.4345703125,-125.03623962402),
            max = Vector(8291.2607421875,7794.96484375,31.96875),
            ang = Angle( 0, 0, 0 )
        }
    },
} )
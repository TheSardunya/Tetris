if(y <= 32)
{
        if(instance_position(1000, 1000, Blockflatshape) != noone)
    {
        instance_destroy(instance_position(1000, 1000, Blockflatshape));
    }
    else if(instance_position(1000, 1000, Blocklshape) != noone)
    {
        instance_destroy(instance_position(1000, 1000, Blocklshape));
    }
    else if(instance_position(1000, 1000, Blockpshape) != noone)
    {
        instance_destroy(instance_position(1000, 1000, Blockpshape));
    }
    else if(instance_position(1000, 1000, BlockRlshape) != noone)
    {
        instance_destroy(instance_position(1000, 1000, BlockRlshape));
    }
    else if(instance_position(1000, 1000, Blocksqshape) != noone)
    {
        instance_destroy(instance_position(1000, 1000, Blocksqshape));
    }
    else if(instance_position(1000, 1000, Blocksshape) != noone)
    {
        instance_destroy(instance_position(1000, 1000, Blocksshape));
    }
    else if(instance_position(1000, 1000, Blockzshape) != noone)
    {
        instance_destroy(instance_position(1000, 1000, Blockzshape));
    }
    for(var xox = 0; xox < 25; xox++)
    {
        for(var i = 0; i < 10;i++)
        {
            if(instance_position(i * 32, 32 * xox, Fallen) != noone)
            {
                instance_destroy(instance_position(i * 32, 32 * xox, Fallen));
            }
            else if(instance_position(i * 32, 32 * xox, blockl1) != noone)
            {
                instance_destroy(instance_position(i * 32, 32 * xox, blockl1));
            }
            else if(instance_position(i * 32, 32 * xox, blockl2) != noone)
            {
                instance_destroy(instance_position(i * 32, 32 * xox, blockl2));
            }
            else if(instance_position(i * 32, 32 * xox, blockl3) != noone)
            {
                instance_destroy(instance_position(i * 32, 32 * xox, blockl3));
            }
            else if(instance_position(i * 32, 32 * xox, blockl4) != noone)
            {
                instance_destroy(instance_position(i * 32, 32 * xox, blockl4));
            }
        }
    }
    var abesod = random(7);
        if(abesod <= 1){
            instance_create_layer(1000,1000,"Instances", Blocksqshape);
        }
        else if(abesod <= 2) {
    	    instance_create_layer(1000,1000,"Instances", Blockflatshape);
        }
        else if(abesod <= 3)
        {
            instance_create_layer(1000,1000,"Instances", Blocklshape);
        }
        else if(abesod <= 4)
        {
            instance_create_layer(1000, 1000, "Instances", Blocksshape);
        }
        else if(abesod <= 5)
        {
            instance_create_layer(1000, 1000, "Instances", BlockRlshape);
        }
        else if(abesod <= 6){
            instance_create_layer(1000, 1000, "Instances", Blockpshape)	;
        }
    else {
        instance_create_layer(1000,1000,"Instances",Blockzshape);	
    }
    instance_destroy(self);
}
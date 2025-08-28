if(blockl4Var.y < 800 - 32)
{
    blockl1Var.y += 32;
    blockl2Var.y += 32;
    blockl3Var.y += 32;
    blockl4Var.y += 32;
    if(place_meeting(blockl1Var.x,blockl1Var.y, Fallen) ||place_meeting(blockl2Var.x,blockl2Var.y, Fallen) ||place_meeting(blockl3Var.x,blockl3Var.y, Fallen) || place_meeting(blockl4Var.x,blockl4Var.y, Fallen) )
    {
        blockl1Var.y -= 32;
        blockl2Var.y -= 32;
        blockl3Var.y -= 32;
        blockl4Var.y -= 32;
        isLanded = true;
        instance_create_layer(blockl1Var.x, blockl1Var.y, "Instances", Fallen);
        instance_create_layer(blockl2Var.x, blockl2Var.y, "Instances", Fallen);
        instance_create_layer(blockl3Var.x, blockl3Var.y, "Instances", Fallen);
        instance_create_layer(blockl4Var.x, blockl4Var.y, "Instances", Fallen);
        audio_play_sound(Block_Fall, 10, false);
        instance_destroy(blockl1Var);
        instance_destroy(blockl2Var);
        instance_destroy(blockl3Var);
        instance_destroy(blockl4Var);
        instance_destroy(blocklR1Var);
                instance_destroy(blocklR2Var);
                instance_destroy(blocklR3Var);
                instance_destroy(blocklR4Var);
        random_set_seed(current_time + current_second);
        var abesod = random(6);
        if(abesod <= 1){
            instance_create_layer(1000,1000,"Instances", Blocksshape);
        }
        else if(abesod <= 2) {
    	    instance_create_layer(1000,1000,"Instances", Blockflatshape);
        }
        else if(abesod <= 3)
        {
            instance_create_layer(1000,1000,"Instances", Blockpshape);
        }
        else if(abesod <= 4)
        {
            instance_create_layer(1000, 1000, "Instances", Blockzshape);
        }
        else if(abesod <= 5)
        {
            instance_create_layer(1000, 1000, "Instances", BlockRlshape);
        }
        else {
            instance_create_layer(1000, 1000, "Instances", Blocksqshape)	;
        }
        instance_destroy(self);
    }
}
else 
{
    isLanded = true;
    instance_create_layer(blockl1Var.x, blockl1Var.y, "Instances", Fallen);
    instance_create_layer(blockl2Var.x, blockl2Var.y, "Instances", Fallen);
    instance_create_layer(blockl3Var.x, blockl3Var.y, "Instances", Fallen);
    instance_create_layer(blockl4Var.x, blockl4Var.y, "Instances", Fallen);
    audio_play_sound(Block_Fall, 10, false);
    instance_destroy(blockl1Var);
        instance_destroy(blockl2Var);
        instance_destroy(blockl3Var);
        instance_destroy(blockl4Var);
    instance_destroy(blocklR1Var);
                instance_destroy(blocklR2Var);
                instance_destroy(blocklR3Var);
                instance_destroy(blocklR4Var);
    random_set_seed(current_time + current_second);
    var abesod = random(6);
        if(abesod <= 1){
            instance_create_layer(1000,1000,"Instances", Blocksshape);
        }
        else if(abesod <= 2) {
    	    instance_create_layer(1000,1000,"Instances", Blockflatshape);
        }
        else if(abesod <= 3)
        {
            instance_create_layer(1000,1000,"Instances", Blockpshape);
        }
        else if(abesod <= 4)
        {
            instance_create_layer(1000, 1000, "Instances", Blockzshape);
        }
        else if(abesod <= 5)
        {
            instance_create_layer(1000, 1000, "Instances", BlockRlshape);
        }
        else {
            instance_create_layer(1000, 1000, "Instances", Blocksqshape)	;
        }
    instance_destroy(self);	
}
alarm_set(1, 10)
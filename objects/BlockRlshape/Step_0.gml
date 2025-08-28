if(global.isPaused)
{
    alarm[0] = -1;
    alarm[1] = -1;
}
while(true)
    {
        if(place_meeting(blocklR1Var.x,blocklR1Var.y, Fallen) ||place_meeting(blocklR2Var.x,blocklR2Var.y, Fallen) ||place_meeting(blocklR3Var.x,blocklR3Var.y, Fallen) ||place_meeting(blocklR4Var.x,blocklR4Var.y, Fallen))
            {
                blocklR1Var.y -= 32;
                blocklR2Var.y -= 32;
                blocklR3Var.y -= 32;
                blocklR4Var.y -= 32;
                
            }
        
        if(blocklR4Var.y < 800 - 32)
        {
            blocklR1Var.y += 32;
            blocklR2Var.y += 32;
            blocklR3Var.y += 32;
            blocklR4Var.y += 32;
            if(place_meeting(blocklR1Var.x,blocklR1Var.y, Fallen) ||place_meeting(blocklR2Var.x,blocklR2Var.y, Fallen) ||place_meeting(blocklR3Var.x,blocklR3Var.y, Fallen) ||place_meeting(blocklR4Var.x,blocklR4Var.y, Fallen))
            {
                blocklR1Var.y -= 32;
                blocklR2Var.y -= 32;
                blocklR3Var.y -= 32;
                blocklR4Var.y -= 32;
                break;
            }
            
        }
        else 
        {
            break;
        }
}
for(var i = blocklR4Var.y; i > 0; i -= 32)
        {
            var pos1 = instance_position(blocklR1Var.x, i, Fallen);
            var pos2 = instance_position(blocklR2Var.x, i, Fallen);
            var pos3 = instance_position(blocklR3Var.x, i, Fallen);
            var pos4 = instance_position(blocklR4Var.x, i, Fallen);

            if (pos1 != noone || pos2 != noone || pos3 != noone || pos4 != noone)
            {
                var diff = 0;
                if(pos1 != noone && pos1.y > blockl4Var.y){diff = blocklR4Var.y - pos1.y;}
                else if(pos2 != noone && pos2.y > blockl4Var.y){diff = blocklR4Var.y - pos2.y;}
                else if(pos3 != noone && pos3.y > blockl4Var.y){diff = blocklR4Var.y - pos3.y;}
                else if(pos4 != noone && pos4.y > blockl4Var.y){diff = blocklR4Var.y - pos4.y;}

                blocklR4Var.y -= diff;
                blocklR3Var.y -= diff;
                blocklR2Var.y -= diff;
                blocklR1Var.y -= diff;
            }
        }
if(keyboard_check_pressed(vk_right) && blockl1Var.x < 320 - 33 && !isLanded && !global.isPaused)
{
    blockl1Var.x += 32;
    blockl2Var.x += 32;
    blockl3Var.x += 32;
    blockl4Var.x += 32;
    blocklR1Var.x += 32;
    blocklR2Var.x += 32;
    blocklR3Var.x += 32;
    blocklR4Var.x += 32;
    if(place_meeting(blockl1Var.x,blockl1Var.y, Fallen) ||place_meeting(blockl2Var.x,blockl2Var.y, Fallen) ||place_meeting(blockl3Var.x,blockl3Var.y, Fallen) || place_meeting(blockl4Var.x,blockl4Var.y, Fallen))
    {
        blockl1Var.x -= 32;
        blockl2Var.x -= 32;
        blockl3Var.x -= 32;
        blockl4Var.x -= 32;
        blocklR1Var.x -= 32;
    blocklR2Var.x -= 32;
    blocklR3Var.x -= 32;
    blocklR4Var.x -= 32;
    }
}
else if(keyboard_check_pressed(vk_left) && blockl2Var.x > 32 && !isLanded && !global.isPaused)
{
    blockl1Var.x -= 32;
    blockl2Var.x -= 32;
    blockl3Var.x -= 32;
    blockl4Var.x -= 32;
    blocklR1Var.x -= 32;
    blocklR2Var.x -= 32;
    blocklR3Var.x -= 32;
    blocklR4Var.x -= 32;
    if(place_meeting(blockl1Var.x,blockl1Var.y, Fallen) ||place_meeting(blockl2Var.x,blockl2Var.y, Fallen) ||place_meeting(blockl3Var.x,blockl3Var.y, Fallen) || place_meeting(blockl4Var.x,blockl4Var.y, Fallen))
    {
        blockl1Var.x += 32;
        blockl2Var.x += 32;
        blockl3Var.x += 32;
        blockl4Var.x += 32;
        blocklR1Var.x += 32;
    blocklR2Var.x += 32;
    blocklR3Var.x += 32;
    blocklR4Var.x += 32;
    }
}
else if(keyboard_check_pressed(vk_space) && !isLanded && defaulted && !global.isPaused)
{
    blockl1Var.x += 32;
    blockl2Var.y += 32;
    blockl4Var.x += 32;
    blockl4Var.y -= 32;
    blocklR1Var.x += 32;
    blocklR2Var.y += 32;
    blocklR4Var.x += 32;
    blocklR4Var.y -= 32;
    defaulted = false;
    yan = true;
    if(blocklR4Var.y > 800)
    {
        blocklR1Var.y -= blocklR4Var.y - 784;
        blocklR2Var.y -= blocklR4Var.y - 784;
        blocklR3Var.y -= blocklR4Var.y - 784;
        blocklR4Var.y -= blocklR4Var.y - 784;
    }
    if(place_meeting(blockl1Var.x,blockl1Var.y, Fallen) ||place_meeting(blockl2Var.x,blockl2Var.y, Fallen) ||place_meeting(blockl3Var.x,blockl3Var.y, Fallen) || place_meeting(blockl4Var.x,blockl4Var.y, Fallen) || blockl1Var.x >= 320 || blockl2Var.x <= 0 )
    {
        blockl1Var.x -= 32;
        blockl2Var.y -= 32;
        blockl4Var.x -= 32;
        blockl4Var.y += 32;
        blocklR1Var.x -= 32;
        blocklR2Var.y -= 32;
        blocklR4Var.x -= 32;
        blocklR4Var.y += 32;
        yan = false;
        defaulted = true;
    }
}
else if(keyboard_check_pressed(vk_space) && !isLanded && yan && !defaulted && !global.isPaused)
{
    ayna = true;
    yan = false;
    blockl2Var.y -= 32;
    blockl2Var.x += 32;
    blockl4Var.y += 32;
    blockl4Var.x -= 32;
    blockl1Var.y += 2 * 32;
    blocklR2Var.y -= 32;
    blocklR2Var.x += 32;
    blocklR4Var.y += 32;
    blocklR4Var.x -= 32;
    blocklR1Var.y += 2 * 32;
    if(blocklR4Var.y > 800)
    {
        blocklR1Var.y -= blocklR4Var.y - 784;
        blocklR2Var.y -= blocklR4Var.y - 784;
        blocklR3Var.y -= blocklR4Var.y - 784;
        blocklR4Var.y -= blocklR4Var.y - 784;
    }
    if(place_meeting(blockl1Var.x,blockl1Var.y, Fallen) ||place_meeting(blockl2Var.x,blockl2Var.y, Fallen) ||place_meeting(blockl3Var.x,blockl3Var.y, Fallen) || place_meeting(blockl4Var.x,blockl4Var.y, Fallen) || blockl1Var.x >= 320 || blockl2Var.x <= 0 )
    {
        blockl2Var.y -= 32;
        blockl2Var.x += 32;
        blockl4Var.y += 32;
        blockl4Var.x -= 32;
        blockl1Var.y += 2 * 32;
        blocklR2Var.y -= 32;
        blocklR2Var.x += 32;
        blocklR4Var.y += 32;
        blocklR4Var.x -= 32;
        blocklR1Var.y += 2 * 32;
        ayna = false;
        yan = true;
    }
}
else if(keyboard_check_pressed(vk_space) && !isLanded && ayna && !defaulted && !global.isPaused)
{
    ayna = false;
    aynayan = true;
    blockl4Var.x -= 32;
    blockl1Var.y -= 32;
    blockl2Var.x -= 32;
    blockl2Var.y += 32;
    blocklR4Var.x -= 32;
    blocklR1Var.y -= 32;
    blocklR2Var.x -= 32;
    blocklR2Var.y += 32;
    if(blocklR4Var.y > 800)
    {
        blocklR1Var.y -= blocklR4Var.y - 784;
        blocklR2Var.y -= blocklR4Var.y - 784;
        blocklR3Var.y -= blocklR4Var.y - 784;
        blocklR4Var.y -= blocklR4Var.y - 784;
    }
    if(place_meeting(blockl1Var.x,blockl1Var.y, Fallen) ||place_meeting(blockl2Var.x,blockl2Var.y, Fallen) ||place_meeting(blockl3Var.x,blockl3Var.y, Fallen) || place_meeting(blockl4Var.x,blockl4Var.y, Fallen)  || blockl1Var.x >= 320 || blockl2Var.x <= 0)
    {
        blockl4Var.x += 32;
        blockl1Var.y += 32;
        blockl2Var.x += 32;
        blockl2Var.y -= 32;
        blocklR4Var.x += 32;
        blocklR1Var.y += 32;
        blocklR2Var.x += 32;
        blocklR2Var.y -= 32;
        ayna = true;
        aynayan = false;
    }
}
else if(keyboard_check_pressed(vk_space) && !isLanded && aynayan && !defaulted && !global.isPaused)
{
    aynayan = false;
    defaulted = true;
    blockl1Var.y -= 32;
    blockl1Var.x -= 32;
    blockl2Var.y -= 32;
    blockl4Var.x += 32;
    blocklR1Var.y -= 32;
    blocklR1Var.x -= 32;
    blocklR2Var.y -= 32;
    blocklR4Var.x += 32;
    if(blocklR4Var.y > 800)
    {
        blocklR1Var.y -= blocklR4Var.y - 784;
        blocklR2Var.y -= blocklR4Var.y - 784;
        blocklR3Var.y -= blocklR4Var.y - 784;
        blocklR4Var.y -= blocklR4Var.y - 784;
    }
    if(place_meeting(blockl1Var.x,blockl1Var.y, Fallen) ||place_meeting(blockl2Var.x,blockl2Var.y, Fallen) ||place_meeting(blockl3Var.x,blockl3Var.y, Fallen) || place_meeting(blockl4Var.x,blockl4Var.y, Fallen) || blockl1Var.x >= 320 || blockl2Var.x <= 0 )
    {
        blockl1Var.y += 32;
        blockl1Var.x += 32;
        blockl2Var.y += 32;
        blockl4Var.x -= 32;
        blocklR1Var.y += 32;
        blocklR1Var.x += 32;
        blocklR2Var.y += 32;
        blocklR4Var.x -= 32;
        aynayan = true;
        defaulted = false;
    }
}
if(keyboard_check(vk_down) && reles && !global.isPaused)
{
    alarm[0] = -1;
    alarm[1] = 10;
    reles = false;
}
else if(keyboard_check_released(vk_down) && !global.isPaused)
{
    alarm[1] = -1;
    alarm[0] = 10;	
    reles = true;
}
if(keyboard_check_pressed(vk_down) && !global.isPaused)
{
    if(blockl4Var.y < 800 - 32)
{
    blockl1Var.y += 32;
    blockl2Var.y += 32;
    blockl3Var.y += 32;
    blockl4Var.y += 32;
    if(place_meeting(blockl1Var.x,blockl1Var.y, Fallen) ||place_meeting(blockl2Var.x,blockl2Var.y, Fallen) ||place_meeting(blockl3Var.x,blockl3Var.y, Fallen) ||place_meeting(blockl4Var.x,blockl4Var.y, Fallen))
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
            instance_create_layer(1000, 1000, "Instances", Blockzshape);
        }
        else if(abesod <= 5)
        {
            instance_create_layer(1000, 1000, "Instances", Blocksshape);
        }
        else {
            instance_create_layer(1000, 1000, "Instances", Blockpshape)	;
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
            instance_create_layer(1000, 1000, "Instances", Blockzshape);
        }
        else if(abesod <= 5)
        {
            instance_create_layer(1000, 1000, "Instances", Blocksshape);
        }
        else {
            instance_create_layer(1000, 1000, "Instances", Blockpshape)	;
        }
    instance_destroy(self);
}
}
else if(keyboard_check_pressed(vk_up) && !global.isPaused)
{
    while(true)
    {
        if(blockl4Var.y < 800 - 32)
        {
            blockl1Var.y += 32;
            blockl2Var.y += 32;
            blockl3Var.y += 32;
            blockl4Var.y += 32;
            if(place_meeting(blockl1Var.x,blockl1Var.y, Fallen) ||place_meeting(blockl2Var.x,blockl2Var.y, Fallen) ||place_meeting(blockl3Var.x,blockl3Var.y, Fallen) ||place_meeting(blockl4Var.x,blockl4Var.y, Fallen))
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
    	            instance_create_layer(1000,1000,"Instances", Blocklshape);
                }
                else if(abesod <= 3)
                {
                    instance_create_layer(1000,1000,"Instances", Blockpshape)
                }
                else if(abesod <= 4)
                {
                    instance_create_layer(1000, 1000, "Instances", Blockflatshape);
                }
                else if(abesod <= 5){
                    instance_create_layer(1000, 1000, "Instances", Blockzshape);
                }
                else {
                    instance_create_layer(1000, 1000, "Instances", Blocksqshape)	;
                }
                instance_destroy(self);
                break;
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
    	            instance_create_layer(1000,1000,"Instances", Blocklshape);
                }
                else if(abesod <= 3)
                {
                    instance_create_layer(1000,1000,"Instances", Blockpshape)
                }
                else if(abesod <= 4)
                {
                    instance_create_layer(1000, 1000, "Instances", Blockflatshape);
                }
                else if(abesod <= 5){
                    instance_create_layer(1000, 1000, "Instances", Blockzshape);
                }
                else {
                    instance_create_layer(1000, 1000, "Instances", Blocksqshape)	;
                }
                instance_destroy(self);
                break;
        }
    }
}
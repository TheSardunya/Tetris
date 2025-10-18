if(gamepad_is_connected(0))
{
    global.padSlot = 0;
}
else if(gamepad_is_connected(1))
{
    global.padSlot = 1;
}
else if(gamepad_is_connected(2))
{
    global.padSlot = 2;
}
else if(gamepad_is_connected(3))
{
    global.padSlot = 3;
}
else if(gamepad_is_connected(5))
{
    global.padSlot = 5;
}
else if(gamepad_is_connected(6))
{
    global.padSlot = 6;
}
else if(gamepad_is_connected(7))
{
    global.padSlot = 7;
}
else if(gamepad_is_connected(8))
{
    global.padSlot = 8;
}
else if(gamepad_is_connected(9))
{
   global.padSlot = 9;
}
else if(gamepad_is_connected(10))
{
   global.padSlot = 10;
}
else if(gamepad_is_connected(11))
{
   global.padSlot = 11;
}
else if(gamepad_is_connected(4))
{
    global.padSlot = 4;
}
if(gamepad_button_check_pressed(global.padSlot, gp_face1))
{
    keyboard_key_press(vk_up);
}
else if(gamepad_button_check_released(global.padSlot, gp_face1))
{
    keyboard_key_release(vk_up);
}
if(gamepad_button_check_pressed(global.padSlot, gp_home)){keyboard_key_press(ord("P"));}
else if(gamepad_button_check_released(global.padSlot, gp_home)){keyboard_key_release(ord("P"));}
if(gamepad_button_check_pressed(global.padSlot, gp_padd)){keyboard_key_press(vk_down);}
else if(gamepad_button_check_released(global.padSlot, gp_padd)){keyboard_key_release(vk_down);}
if(gamepad_button_check_pressed(global.padSlot, gp_padr)){keyboard_key_press(vk_right);}
else if(gamepad_button_check_released(global.padSlot, gp_padr)){keyboard_key_release(vk_right);}
if(gamepad_button_check_pressed(global.padSlot, gp_padl)){keyboard_key_press(vk_left);}
else if(gamepad_button_check_released(global.padSlot, gp_padl)){keyboard_key_release(vk_left);}
if(gamepad_button_check_pressed(global.padSlot, gp_face3)){keyboard_key_press(vk_space);}
else if(gamepad_button_check_released(global.padSlot, gp_face3)){keyboard_key_release(vk_space);}
var hAxis = gamepad_axis_value(global.padSlot, gp_axislh);
if(hAxis > 0)
{isChange = !right; right = true; left = false; movin = true; rAlarmInterval = round((1 - hAxis + 1) * 3); lAlarmInterval = 1;}
else if(hAxis < 0)
{isChange = !left; right = false; left = true; movin = true; lAlarmInterval = round((1 - (hAxis * -1) + 1) * 3); rAlarmInterval = 1;}    
else{movin = false;left = false; right = false;}
if(isChange && right){isPressed = false; isPressedr = true;}
else if(isChange && left){isPressed = true; isPressedr = false;}    
if(keyboard_check_pressed(ord("P")))
{
    global.isPaused = global.isPaused ? false : true;
}
else if(keyboard_check_pressed(ord("R")))
{
    global.score = 0;
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
            else if(instance_position(i * 32, 32 * xox, blocklR1) != noone)
            {
                instance_destroy(instance_position(i * 32, 32 * xox, blocklR1));
            }
            else if(instance_position(i * 32, 32 * xox, blocklR2) != noone)
            {
                instance_destroy(instance_position(i * 32, 32 * xox, blocklR2));
            }
            else if(instance_position(i * 32, 32 * xox, blocklR3) != noone)
            {
                instance_destroy(instance_position(i * 32, 32 * xox, blocklR3));
            }
            else if(instance_position(i * 32, 32 * xox, blocklR4) != noone)
            {
                instance_destroy(instance_position(i * 32, 32 * xox, blocklR4));
            }
        }
    }
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
}

if(isPressed && movin && left){
    keyboard_key_press(vk_left);
    isPressed  = false;
}
else if(movin && left)
{keyboard_key_release(vk_left);isPressed = true;} 
else
{keyboard_key_release(vk_left);}    
alarm_set(0, lAlarmInterval);    
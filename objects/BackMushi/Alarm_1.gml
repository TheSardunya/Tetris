if(isPressedr && movin && right){
    keyboard_key_press(vk_right);
    isPressedr = false;
}
else if(movin && right)
{keyboard_key_release(vk_right);isPressedr = true;}
else
{keyboard_key_release(vk_right);}    
alarm_set(1, rAlarmInterval);
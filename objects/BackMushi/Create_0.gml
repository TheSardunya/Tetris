if(!audio_is_playing(Back_Music))
{
    audio_play_sound(Back_Music, 5, true);
}
isPressed = false;
movin = false;
isPressedr = false;
global.tickSpd0 = 60;
global.tickSpd1 = 10;   
global.padSlot = 0; 
lAlarmInterval = 1;
rAlarmInterval = 1;
isChange = false;
right = false;
left = false;
alarm[0] = 1;
alarm[1] = 1;
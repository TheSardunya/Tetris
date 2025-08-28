for(var xox = 0; xox < 25; xox++)
{
    for(var i = 0; i < 10;i++)
    {
        if(instance_position(i * 32, 32 * xox, Fallen) != noone)
        {
            rows[xox]++;
        }
    }
}
if(poppin != 0 && oldxox != -1)
{
    oldxox -= 1
    for(; oldxox > 0; oldxox--)
    {
        for(var i = 0; i < 10;i++)
        {
            if(instance_position(i * 32, 32 * oldxox, Fallen) != noone)
            {
                instance_position(i * 32, 32 * oldxox, Fallen).y += 32 * poppin;
            }
        }
    }
    global.score += poppin;
    poppin = 0;
    oldxox = -1;
    audio_play_sound(Block_Crush, 10, false);
}
for(var xox = 0; xox < 25; xox++)
{
    if(rows[xox] == 10)
    {
        for(var i = 0; i < 10;i++)
        {
            if(instance_position(i * 32, 32 * xox, Fallen) != noone)
            {
                instance_destroy(instance_position(i * 32, 32 * xox, Fallen));
                oldxox = xox;
            }
        }
        poppin++;
    }
    rows[xox] = 0;
}

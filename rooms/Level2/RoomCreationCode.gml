random_set_seed(current_time);
var abesod = random(7);
if(abesod <= 1)
{
    instance_create_layer(1000, 1000, "Instances", Blockflatshape);
}
else if(abesod <= 2)
{
    instance_create_layer(1000, 1000, "Instances", Blocklshape);
}
else if(abesod <= 3)
{
    instance_create_layer(1000, 1000, "Instances", Blockpshape);
}
else if(abesod <= 4)
{
    instance_create_layer(1000, 1000, "Instances", BlockRlshape);
}
else if(abesod <= 5)
{
    instance_create_layer(1000, 1000, "Instances", Blocksqshape);
}
else if(abesod <= 6)
{
    instance_create_layer(1000, 1000, "Instances", Blocksshape);
}
else{
    instance_create_layer(1000, 1000, "Instances", Blockzshape);
}
global.tickSpd0 -= global.tickSpd0 > 8 ? 2 : 0;
global.tickSpd1 -= global.tickSpd1 > 5 ? 2 : 0;
alarm_set(0,global.tickSpd0)
blockl1Var = instance_create_layer(176, 16, "Instances", blockl1);
blockl2Var = instance_create_layer(144, 16, "Instances", blockl2);
blockl3Var = instance_create_layer(176, 48, "Instances", blockl3);
blockl4Var = instance_create_layer(176, 80, "Instances", blockl4);
blocklR1Var = instance_create_layer(176, 16, "Instances", blocklR1); 
blocklR2Var = instance_create_layer(144, 16, "Instances", blocklR2);
blocklR3Var = instance_create_layer(176, 48, "Instances", blocklR3);
blocklR4Var = instance_create_layer(176, 80, "Instances", blocklR4);
isLanded = false;
defaulted = true;
yan = false;
ayna = false;
aynayan = false;
isranded = false;
reles = true;
  
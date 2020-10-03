/// @description 

inst_collision = instance_create_layer(x, y, "Collision", obj_collision);

inst_collision.x += 6;
inst_collision.y += 12;
inst_collision.image_xscale *= (20 / 32);
inst_collision.image_yscale *= (20 / 32);
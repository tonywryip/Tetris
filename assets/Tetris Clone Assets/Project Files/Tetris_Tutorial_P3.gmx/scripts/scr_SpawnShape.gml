/// scr_SpawnShape()

var _shape = instance_create(x,y,obj_Shape);

with (_shape){
    index = choose(0,1,2,3,4,5,6);
    switch(index){
        case 0:
            sprite_index = spr_Shape_Sq;
            shadow_sprite = spr_Shadow_Sq;
            break;
        case 1:
            sprite_index = spr_Shape_L1;
            shadow_sprite = spr_Shadow_L1;
            break;
        case 2:
            sprite_index = spr_Shape_L2;
            shadow_sprite = spr_Shadow_L2;
            break;
        case 3:
            sprite_index = spr_Shape_Str;
            shadow_sprite = spr_Shadow_Str;
            break;
        case 4:
            sprite_index = spr_Shape_T;
            shadow_sprite = spr_Shadow_T;
            break;
        case 5:
            sprite_index = spr_Shape_Z;
            shadow_sprite = spr_Shadow_Z;
            break;
        case 6:
            sprite_index = spr_Shape_S;
            shadow_sprite = spr_Shadow_S;
            break;
    }
}

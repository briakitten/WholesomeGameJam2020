/// @function apply_movement_collision(_spd, _dir)
/// @param _spd
/// @param _dir
function apply_movement_collision(_spd, _dir) {
	// dir is measured in degrees, from 0 to 360
	var spd = _spd;
	var dir = _dir;
 
	var xtarg = x+lengthdir_x(spd,dir);
	var ytarg = y+lengthdir_y(spd,dir);
 
	if place_free(xtarg,ytarg) {
	    x = xtarg;
	    y = ytarg;
	}
	else {
	
	    var sweep_interval = 10;
    
	    for ( var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
	        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
	            var angle_to_check = dir+angle*multiplier;
	            xtarg = x+lengthdir_x(spd, angle_to_check);
	            ytarg = y+lengthdir_y(spd, angle_to_check);     
	            if place_free(xtarg,ytarg) {
	                x = xtarg;
	                y = ytarg;  
	                exit;       
	            }   
	        }
	    }
	}


}
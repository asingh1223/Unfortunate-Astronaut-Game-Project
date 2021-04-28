
//Get x and y position of  Camera 
var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);

//Sets the player object as the target of the camera and centers it on him
var targetX = objPlayer.x - Res_W/2;
var targetY = objPlayer.y - Res_H/2;

//clamps the target to the room bounds
targetX = clamp(targetX, 0, room_width - Res_W);
targetY = clamp(targetY, 0, room_height - Res_H);

//sThis moothly moves the camera to the target position
camX = lerp(camX, targetX, CAM_SMOOTH);
camY = lerp(camY, targetY, CAM_SMOOTH); 

//Apply the new position to the camera
camera_set_view_pos(camera, camX, camY); 
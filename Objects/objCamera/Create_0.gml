//Macros are global variables and these set the window size, resolution and how smooth the camera moves 
#macro Res_W 1920
#macro Res_H 1080
#macro Res_Scale 1.
#macro CAM_SMOOTH 0.1

//Enables a set view area so the whole room isn't shown, this is required for a camera
view_enabled = true;
view_visible[0] = true;

//Creates the Camera and makes it start in 0,0 and have the size of the macros. 
camera = camera_create_view(0,0, Res_W, Res_H);

//set up camera at view 0 which is the room
view_set_camera(0, camera);

//Makes the Resolution and application size the same
window_set_size(Res_W * Res_Scale, Res_H * Res_Scale);
surface_resize(application_surface, Res_W * Res_Scale, Res_H * Res_Scale);
display_set_gui_size(Res_W, Res_H); //for gui

// Centers the window when the game has been ran - gets height and width of display
var display_width = display_get_width();
var display_height = display_get_height();

//gets height and width of window
var window_width = Res_W * Res_Scale;
var window_height = Res_H * Res_Scale;

// Subtracts half the window size from the display size to complete the centering process
window_set_position(display_width/2 - window_width/2, display_height/2 - window_height/2);


//update destination

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//update position

x += (xTo - x) / 10;  //where we want to be - where we currently are
y += (yTo - y) / 10; //moves fast when far away slower if closer

//Update camera view

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
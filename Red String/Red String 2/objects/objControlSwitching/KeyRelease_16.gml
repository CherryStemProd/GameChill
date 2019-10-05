if(current_player = 0){
	objOlder.control = true;
	objOlder.depth = 0;
	objMiddle.control = false;
	objMiddle.depth = -1;
	objYoung.control = false;
	objYoung.depth = -1;
	current_player = 1;
}
else if(current_player = 1){
	objOlder.control = false;
	objOlder.depth = -1;
	objMiddle.control = true;
	objMiddle.depth = 0;
	objYoung.control = false;
	objYoung.depth = -1;
	current_player = 2;
}
else if(current_player = 2){
	objOlder.control = false;
	objOlder.depth = -1;
	objMiddle.control = false;
	objMiddle.depth = -1;
	objYoung.control = true;
	objYoung.depth = 0;
	current_player = 0;
}

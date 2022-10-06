extends CanvasLayer

var queue = [];
var index = 0;
var isDialoguing = false;
var player;

func add(name: String, text: String, portrait: Texture):
	if not isDialoguing:
		queue.append({
			name = name,
			text = text,
			portrait = portrait
		});

func play():
	isDialoguing = true;
	visible = true;
	update();
	# if needed do something with player ↓↓↓

func stop():
	isDialoguing = false;
	visible = false;
	queue = [];
	index = 0;
	# if needed do something with player ↓↓↓

func update():
	if index < len(queue):
		$Container/Name.text = queue[index].name;
		$Container/Text.text = queue[index].text;
		$Container/Portrait.texture = queue[index].portrait;
	else:
		stop();

func _ready():
	# get player node here ↓↓↓
	player = get_parent().get_node("KinematicBody2D"); #example!

func _input(event):
	if event.is_action_pressed("ui_accept") and isDialoguing:
		index += 1;
		update();

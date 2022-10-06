# dialogue-system
 A simple ( and different ) dialogue system to Godot.

## Methods

- *add(name, text, portrait)* - add a dialogue piece to queue.
- *play()* - play dialogue.
- *stop()* - stop dialogue.
- *update()* - update dialogue through index. (execute automatically, see the script for more details).

## How to use

**Install**
- Download ZIP.
- Extract on project folder.

**Use**
- Edit dialogue style ( optional ).
- Edit script ( see comments in script ).

```GDScript
onready var Dialogue = get_parent().get_node("Dialogue"); # or get through $ operator.
var player_portrait = load("res://assets/player_portrait.png");
var robot_portrait = load("res://assets/robot_portrait.png");

func _on_Area2D_body_entered(body):
  Dialogue.add("Player", "Hello, World!", player_portrait);
  Dialogue.add("Robot", "Hey! only robot say it.", robot_portrait);
  Dialogue.add("Player", "But... I'm a algorithm...", player_portrait);

  Dialogue.play();
```

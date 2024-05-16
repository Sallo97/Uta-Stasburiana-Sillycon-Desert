class_name Territory

var owner_lizard
var size: float
var color: Color
var desert

func _init(desert_ref, owner):
	# owner.get_color()
	owner_lizard = owner
	size = 10
	color = Constants.Color_Values.ret_color(owner_lizard["morph"])
	desert = desert_ref
	draw()

func draw():
	desert.draw_territory(owner_lizard["position"], size, color)

func delete():
	desert.draw_territory(owner_lizard["position"], size, color, true)	

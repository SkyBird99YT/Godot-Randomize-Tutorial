extends Node2D

#varibles
var nothing
var lol = nothing
var Randomize = false

#stuff we want randomized
enum{
	one,
	two,
	three
}

#randomizeing code
func Random(state_list):
	state_list.shuffle()
	return state_list.pop_front()

#main code
func _physics_process(_delta):
	#this stop the cde from reapeting
	if Randomize == true:
		Randomize = false
		#this is the randomize code put your states in []
		lol = Random([one, two, three])
	
	
	#here is the place where code randomizes
	match lol:
		one:
			#this prints the code
			print("1")
			
			$icon.modulate = Color8(255, 0, 0, 255)
			#this code stop same thing happning again
			lol = nothing
		
		two:
			print("2")
			$icon.modulate = Color8(0, 255, 0, 255)
			lol = nothing
		
		three:
			print("3")
			$icon.modulate = Color8(0, 0, 255, 255)
			lol = nothing
		
	
#time to test it
# here is the code that starts randomize this is how to connect it
func _on_Button_pressed():
	Randomize = true
	

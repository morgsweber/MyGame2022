extends Node2D

var total : int  = 0 #vai ser variável inteira sempre 

func _ready() -> void: 
	update_score(total)
	
func _process(delta: float) -> void: #vou usar para aumentar o score
	total += 1
	update_score(total)
	
func update_score(current_score: float) -> void: #recebe um float e não retorna nada (void)
	#get_node("Score") #acessa o nodo
	#$<nodo> também acessa o nodo de uma forma mais usual
	#str() converte o valor para string 
	$Score.text = str(current_score)  

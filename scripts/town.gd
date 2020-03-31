extends Node2D

var turnoAtual:int
var quantidadeDoentes:int = 0
var quantidadeMortos:int = 0
var pessoas
var lugares
var pacienteZero
var venceu = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	turnoAtual = 0
	venceu = false
	pessoas = get_node("Population").get_children()
	print(pessoas)
	lugares = get_node("Places").get_children()
	_passarTurno()
	_atualizarInfos()
	
func _atualizarInfos():
	var texto = "Turno Atual: " + str(turnoAtual) + "  Doentes: " + str(quantidadeDoentes) + "  Mortos: " + str(quantidadeMortos)
	get_node("Infos").set_text(texto)

func _encontraPacienteZero():
	for n in pessoas:
		if(n.pacienteZero == 1):
			pacienteZero = n

func _movimentoPacienteZero():
	var lugaresFrequentados = []
	var pessoasEncontradas = []
	for i in range(0, 1):
		
		pacienteZero.inte
	
func _movimentoVisitacao():
	for p in pessoas:
		if (p.imunidade > 0 && p.name != get_node("Population").isolado):
			randomize()
			var place1 = randi()%lugares.size()-1
			randomize()
			var place2 = randi()%lugares.size()-1
			if (place1 == place2):
				place2+=1
				lugares[place1].visitantes[turnoAtual-1].pessoas.push_back(p.name)
				lugares[place2].visitantes[turnoAtual-1].pessoas.push_back(p.name)
			else:
				lugares[place1].visitantes[turnoAtual-1].pessoas.push_back(p.name)
				lugares[place2].visitantes[turnoAtual-1].pessoas.push_back(p.name)
			
func _inserirTurnoLugares():
	for l in lugares:
		l.visitantes.push_back({"turno":turnoAtual,"pessoas":[]})
	
func _passandoDoenca():
	var contaminadas = []
	for p in pessoas:
		if(p.doente || p.pacienteZero):
			for l in lugares:
				if(l.visitantes[turnoAtual-1].pessoas.has(p.name) && l.visitantes[turnoAtual-1].pessoas.size() > 1):
					contaminadas.push_back(_retornaContaminada(p.name, l.visitantes[turnoAtual-1].pessoas))
	print(contaminadas)
	for p in pessoas:
		if(contaminadas.has(p.name) && (!p.doente || !p.pacienteZero)):
			p.doente = true
			quantidadeDoentes+=1
			p.turnoAdoecimento = turnoAtual
			p.get_node("Button").add_color_override("font_color", Color(9,248,43))			
	
func _retornaContaminada(doente, visitantes):
	var sorteado = doente
	var randon
	while(sorteado == doente):
		randon = randi() % visitantes.size()-1
		sorteado = visitantes[randon]
	return sorteado
	
func _diminuindoImunidade():
	for p in pessoas:
		if(p.doente && p.imunidade > 0):
			p.imunidade-=1
		if(p.imunidade == 0 && !p.morta):
			p.morta = true
			quantidadeMortos+=1
			p.get_node("Button").visible = false
			if(quantidadeDoentes > 0):
				quantidadeDoentes-=1
	
	
func _venceu():
	for p in pessoas:
		if(p.name == get_node("Population").isolado && p.pacienteZero):
			venceu = true
	
	
func _passarTurno():
	turnoAtual+=1
	_venceu()
	if(!venceu):
		_inserirTurnoLugares()
		_movimentoVisitacao()
		_diminuindoImunidade()
		_passandoDoenca()
		_tirarIsolamento()
		_atualizarInfos()
	else:
		get_node("Infos").set_text("Você encontrou o paciente zero, parabéns!")
	
func _tirarIsolamento():
	get_node("Population").isolado = ""
	get_node("Population").selecionado = ""
	for p in pessoas:
		p.get_node("Button").disabled = false
	
func _on_NextTurn_button_down():
	if(quantidadeMortos < pessoas.size()-1):
		_passarTurno()
	else:
		get_node("Infos").set_text("Todos Morreram! FIm de Jogo =(")

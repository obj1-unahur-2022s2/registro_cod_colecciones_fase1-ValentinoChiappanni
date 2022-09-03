
object registroDeAbatidos {
	const listaDeEnemigosAbatidos = []
	
	method agregarAbatidosDia(cantidad) {
		listaDeEnemigosAbatidos.add(cantidad)
	}
	
	method agregarAbatidosVariosDias(unaLista){
		listaDeEnemigosAbatidos.addAll(unaLista)
	}
	
	method eliminarlaCantidadDeAbatidos(cantidad){
		listaDeEnemigosAbatidos.remove(cantidad)
	}
	
	method eliminarLasCantidadesDeAbatidos(unaLista){
		listaDeEnemigosAbatidos.removeAll(unaLista)
	}
	
	method cantidadDeDiasRegistrados(){
		return listaDeEnemigosAbatidos.size()
	}
	
	method estaVacioElRegistro(){
		return listaDeEnemigosAbatidos.isEmpty()
	}
	
	method algunDiaSeAbatio(cantidad){
		return listaDeEnemigosAbatidos.contains(cantidad)
	}
	
	method primerValorDeAbatidos(){
		return listaDeEnemigosAbatidos.first()
	}
	
	method ultimoValorDeAbatidos(){
		return listaDeEnemigosAbatidos.last()
	}
	
	method maximoValorDeAbatidos(){
		return listaDeEnemigosAbatidos.max()
	}
	
	method totalAbatidos(){
		return listaDeEnemigosAbatidos.sum()
	}
	
	method cantidadDeAbatidosElDiaNro(nroDia){
		return listaDeEnemigosAbatidos.get(nroDia - 1)
	}
	
	method ultimoValorDeAbatidosConSize(){
		return listaDeEnemigosAbatidos.get(self.cantidadDeDiasRegistrados()-1)
	}
	
	method abatidosSuperioresA(cuanto){
		return listaDeEnemigosAbatidos.filter({ x => x > cuanto })
	}
	
	method valoresDeAbatidosPares() {
		return listaDeEnemigosAbatidos.filter({x=>x.even()})
	}
	
	method elValorDeAbatidos(cantidad){
		return listaDeEnemigosAbatidos.find({x=> x == cantidad})
	}
	
	method abatidosSumando(cantidad){
		return listaDeEnemigosAbatidos.map({ x=> x + cantidad })
	}
	
	method abatidosEsAcotada(n1,n2){
		return listaDeEnemigosAbatidos.all({ x => x.between(n1,n2) })
	}
	
	method algunDiaAbatioMasDe(cantidad){
		return listaDeEnemigosAbatidos.any({x => x > cantidad})
	}
	
	method todosLosDiasAbatioMasDe(cantidad){
		return listaDeEnemigosAbatidos.all({x => x > cantidad})
	}
	
	method cantidadAbatidosMayorALaPrimera(){
		return listaDeEnemigosAbatidos.filter( {x => self.primerValorDeAbatidos() < x} ).size()
	}
}

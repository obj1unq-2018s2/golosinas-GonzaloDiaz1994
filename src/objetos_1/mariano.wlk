import golosinas.*

object mariano {
	var property golosinas = []
	var property listaDeSabores = []
	method comprar(golosina) {golosinas.add(golosina)}
	method desechar(golosina) {golosinas.remove(golosina)}
	method probarGolosinas() {golosinas.forEach({golosina => golosina.mordisco()})}
	method hayGolosinaSinTACC(){ return golosinas.any({golosina=> golosina.libreGluten()})}
	method preciosCuidados(){ return golosinas.all({golosina=>golosina.precio() <= 10})}
	method golosinaDeSabor(unSabor){ return golosinas.find({golosina=> golosina.gusto() == unSabor})}
	method golosinasDeSabor(unSabor){ return golosinas.filter({golosina=> golosina.gusto() == unSabor})}
	method sabores(){golosinas.forEach({golosina => listaDeSabores.add(golosina.gusto())}) return listaDeSabores.withoutDuplicates()}
	method golosinaMasCara(){return golosinas.max({golosina=> golosina.precio()})}
	method pesoGolosinas(){return golosinas.sum({golosina=> golosina.peso()})}
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.asSet().difference(golosinas.asSet()).asList()
	}
	method gustosFaltantes(gustosDeseados){
		self.sabores()
		return gustosDeseados.asSet().difference(self.listaDeSabores().asSet()).asList()
	}
}


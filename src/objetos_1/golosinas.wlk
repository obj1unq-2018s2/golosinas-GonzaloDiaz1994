object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var property peso =300
	method precio() = 12
	method gusto() = "chocolate"
	method libreGluten()= false
	method mordisco() { peso = peso * 0.8 }
}

object caramelo {
	var property peso = 5
	method precio() = 1
	method gusto() = "frutilla"
	method libreGluten()= true
	method mordisco() { peso -= 1 }
}

object chupetin {
	var property peso = 7
	method precio() = 2
	method gusto() = "naranja"
	method libreGluten()= true
	method mordisco() {if(peso >= 2) peso = peso * 0.9 }
}

object oblea {
	var property peso = 250
	method precio() = 5
	method gusto() = "vainilla"
	method libreGluten()= false
	method mordisco(){if(peso > 70) peso = peso * 0.5
		else{(peso = peso * 0.75)}
	}		
}

object chocolatin {
	var pesoInicial
	var property peso
	
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		peso = cuanto
	}
	method precio() = pesoInicial * 0.5
	method libreGluten() = false
	method gusto() = "chocolate"
	method mordisco() { peso -= 2}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() = golosinaInterior.precio() + 2 
	method peso() = golosinaInterior.peso() + pesoBanio 
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() = golosinaInterior.gusto() 
	method libreGluten() = golosinaInterior.libreGluten()	
}

object tuttifrutti {
	var property peso = 5
	var property libreGluten = true
	var property gusto = "frutilla"
	var numeroMordisco = 0
	method precio(){
		if(self.libreGluten()){ return 7}
		else { return 10}
	}
	method mordisco(){
		if(numeroMordisco == 0){
			gusto = "chocolate"
			numeroMordisco = 1
		}
		else if(numeroMordisco == 1){
			gusto = "naranja"
			numeroMordisco = 2
		}
		else{
			gusto = "frutilla"
			numeroMordisco = 0
			}
	}
}

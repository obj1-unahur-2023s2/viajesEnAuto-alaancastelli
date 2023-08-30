object ludmila {		
	method valorKilometro() =  18
}

object anaMaria {
	 var economiaEsEstable = true
	 
	 method valorKilometro(){
	 	if (economiaEsEstable) 
	 		return 30
	 	else
	 		return 25
	 	}
	 method revertirSituacionEconomica(){
	 	economiaEsEstable = !economiaEsEstable
	 }
	 method economiaEsEstable() = economiaEsEstable
}	

object teresa {
	var property valorKilometro = 22
}


import Clientes.*

object roxana {
	
	method precioViaje(cliente,cantidadDeKilometros){
			return  (cliente.valorKilometro()* cantidadDeKilometros)
		}
}
object gabriela {
	
	method precioViaje(cliente,cantidadDeKilometros){
			return  (cliente.valorKilometro()* cantidadDeKilometros)*1.20
		}
}	
object mariela{
	method precioViaje(cliente,cantidadDeKilometros){
			return  50.Max(cliente.valorKilometro()* cantidadDeKilometros)
		}
}
object juana {
	
	method precioViaje(cliente,cantidadDeKilometros){
		if (cantidadDeKilometros <= 8)
			return 100
		else
			return 200
		}
}

object lucia {
	var property reemplazaA
	
	method reemplazaA(remisera){
		if (self == remisera)
	    self.error("ERROR")
		reemplazaA = remisera
	}
	method reemplazaA() = reemplazaA
	
	method precioViaje(cliente, cantidadDeKilometros){
		return reemplazaA.precioViaje(cliente,cantidadDeKilometros)
	}
}

object melina {
	var trabajaPara
	
	method precioorKilometro(){
		return trabajaPara.precioPorKilometro() -3	
	}	
	method trabajaPara() = trabajaPara
	method trabajaPara(unCliente){
		if (self == unCliente)
	    self.error("ERROR")
		trabajaPara = unCliente
	}
}


object oficina {
	var remisera1
	var remisera2
	
	method asignarremiseras(remi1,remi2){
	remisera1 = remi1
	remisera2 = remi2
	}
	method cambiarPrimerRemiseraPor(remisera){
		remisera1 = remisera
	}
	method intercambiarRemisera(){
		self.asignarremiseras(remi1,remi2)
	}
	method remiseraElegidaParaViajes(cliente,kms){
		if (remisera2.precioViaje(cliente,kms) + 30  < remisera1.precioViaje(cliente,kms) )
			return remisera2
		else
			return remisera1
	}
	
}

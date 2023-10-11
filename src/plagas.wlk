import elementos.*


class Plagas {
	var property poblacion 
	
}

class Cucas inherits Plagas {
	var property pesoPromedio 
	
	method nivelDeDanio() = poblacion / 2
	
	method puedeTransmitirEnfermedades() = pesoPromedio >= 10
	
	method consecuenciaDeAtaque() = poblacion + pesoPromedio * 2
	
} 

class Pulgas inherits Plagas {
	
	method nivelDeDanio() = poblacion * 2
	
	method puedeTransmitirEnfermedades() =  poblacion > 10 
	
	method consecuenciaDeAtaque() {}
}

class Garrapatas  inherits Plagas {
	
	method nivelDeDanio() = poblacion * 2
	
	method puedeTransmitirEnfermedades() =  poblacion > 10 
	
	method consecuenciaDeAtaque() =  poblacion + 0.20 
}

class Mosquitos  inherits Plagas {
	
	method nivelDeDanio() = poblacion 
	
	method puedeTransmitirEnfermedades() = self.puedeTransmitirEnfermedades() && poblacion % 3 == 0
	
	method consecuenciaDeAtaque() {}
}
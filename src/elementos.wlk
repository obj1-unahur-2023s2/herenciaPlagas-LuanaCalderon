import plagas.*

class Hogar {
	var property confort = 0
	var property nivelDeMugre = 0
	
	method esBueno() = nivelDeMugre <= (confort / 2)
	
	method recibeAtaque(unaPlaga) {nivelDeMugre += unaPlaga.nivelDeDanio()}
	
}

class Huerta {
     var property capacidadDeProduccion = 0
	var property produccionEsperada
	
	 method esBueno() { return capacidadDeProduccion > produccionEsperada }
	 
	 method recibeAtaque(unaPlaga) = 
	 if(unaPlaga.puedeTransmitirEnfermedades()) capacidadDeProduccion -= ((unaPlaga.nivelDeDanio() * 0.1) + 10)
	 else  capacidadDeProduccion -= (unaPlaga.nivelDeDanio() * 0.1) 
}


class Mascota{
	var property nivelDeSalud
	
	method esBueno() = self.nivelDeSalud() > 250
	
	method recibeAtaque(unaPlaga) { if (unaPlaga.puedeTransmitirEnfermedades()) nivelDeSalud -= unaPlaga.nivelDeDanio() }

	}
	
class Barrio {
	const elementos = []
	
	method agregarElemento(unElemento) = elementos.add(unElemento)
	
	method sacarElemento(unElemento) = 	elementos.remove(unElemento)
	
	method esElementoBueno() = elementos.any({elemento => elemento.esBueno()})
	
	method cantidadElementosBuenos() { return elementos.count({e => e.esBueno()}) }
        
    method cantidadElementoMalos() { return elementos.count({e => not e.esBueno()})}
	
	method esCopado() =   self.cantidadElementosBuenos() > self.cantidadElementoMalos() 
	


}

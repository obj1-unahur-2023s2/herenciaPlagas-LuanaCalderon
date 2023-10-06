

class Hogar {
	var property confort = 0
	var property nivelDeMugre = 0
	
	method esBueno() = nivelDeMugre <= (confort / 2)
	
}

class Huerta {
     var property capacidadDeProduccion = 0
	var property produccionEsperada
	
	 method esBueno() { return capacidadDeProduccion > produccionEsperada }

	
}


class Mascota{
	var property nivelDeSalud
	
	method esBueno() = self.nivelDeSalud() > 250
	
	
	}
	
class Barrio {
	const elementos = []
	
	method agregarElemento(unElemento) = elementos.add(unElemento)
	
	method sacarElemento(unElemento) = 	elementos.remove(unElemento)
	
	method cantidadElementosBuenos() { return elementos.count({e => e.esBueno()}) }
        
    method cantidadElementoMalos() { return elementos.count({e => not e.esBueno()})}
	
	method esCopado() =   self.cantidadElementosBuenos() > self.cantidadElementoMalos() 

}

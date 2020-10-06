class Farolito {
	const property peso = 0.5
	const property carga = 0 
	const property luminoso = true
}

class Canasto {
	const property volumen
	const property peso = volumen / 10
	const property carga = volumen*2
	const property luminoso = false
}

class Morral {
	const property largo
	const property ojoGato	
	const property peso = 1.2
	const property carga = largo / 3
	method luminoso() { return ojoGato }
}

// ¿Qué agregados o cambios deberían hacerse para agregar un nuevo tipo de accesorio? 

// Debería agregar una clase para cada tipo de objeto
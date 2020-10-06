class Deposito {
	const property bicis = []
	
	method bicisRapidas() { return bicis.all( {bici => bici.velocidadCrucero() > 25} ) }
	method marcas() { return bicis.marca().asSet() }
	method nocturno() { return bicis.all( { bici => bici.tieneLuz() } ) }
	method biciParaCarga(peso) { return bicis.any { bici => bici.carga() >= peso } }
	
	method biciMasRapida() { return bicis.max( {bici => bici.velocidadCrucero()} ).marca() }
	method cargaTotalBicisLargas() { return bicis.sum(bicis.filter( {bici => bici.largo() > 170} ).carga()) }
	method cantBicisSinAccesorios() { return bicis.all( {bici => bici.accesorios().isEmpty()} ) }
	
	method companieras(bicicleta) { return bicis.all( {bici => (bici.marca() == bicicleta.marca()) and (bici != bicicleta) } ) } 

}

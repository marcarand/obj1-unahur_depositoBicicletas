class Bici {
	const property rodado
	const property largo
	const property marca
	const property accesorios = []

	method altura() { return ((rodado*2.5)+15) }
	method velocidadCrucero(){ return if (self.altura() > 120) { rodado + 6 } else { rodado + 2 }}
	method carga() { return accesorios.sum( { accesorio => accesorio.carga() } ) }
	method peso() { return (rodado/2) + accesorios.sum( { accesorio => accesorio.peso() } ) }
	method tieneLuz() { return accesorios.any( {accesorio => accesorio.luminoso()} ) }
	method cantAccesoriosLivianos() { return accesorios.count( {accesorio => accesorio.peso() < 1} ) }
}
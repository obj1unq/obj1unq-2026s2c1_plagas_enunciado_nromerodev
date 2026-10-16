class Barrio {

    const elementosDelBarrio = [] // Todos los elementos de un barrio

    method elementosDelBarrio(_elemento) { // Agrega elemento al barrio
    
        elementosDelBarrio.add(_elemento)
    
    } 

    method esCopado(){
        
        // Devuelve si el barrio es copado para eso la mayor parte de los elmentos tienen que ser buenos
        elementosDelBarrio.count({elemento => elemento.esBueno()}) >= elementosDelBarrio.count({ elemento => not elemento.esBuena()})
 
    }

}
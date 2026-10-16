import elemento.Elemento
import huertaConfig.*

class Huerta inherits Elemento{

    var capacidadDeProduccion // Indica la produccion en kilos de la huerta
    const nivelRequerido = huertaConfig.nivelDeHuertas() // nivel requerido para que una huerta sea buena (lo determina siempre la super clase)

    override method esBueno(){ 

        return capacidadDeProduccion > nivelRequerido // Para que una huerta sea buena el nivel de produccion tiene que ser 

    }
    
    override method efectoDeDano(plaga) {
        
        /* 

            La capacidad de produccion de una huerta disminuye en una cantidad que equivale al 10% del nivel de daño de la plaga,
            aparte de que 10 puntos adicionales si la plaga transmite enfermedades

        */

        capacidadDeProduccion -= plaga.nivelDano() * 0.10 + self.danoPorEnfermedad(plaga)

    }

    method danoPorEnfermedad(plaga){ // Devuelve el daño por enfermedad de una plaga

        return if(plaga.transmiteEnfermedades()) 10 else 0 // Si la plaga transmite enfermedades devuelve 10 en caso de no devuelve 0

    }

}
import elemento.Elemento

class Mascota inherits Elemento{

    var salud // Determina la salud de la mascota

    override method esBueno(){ 

        return salud > 250 // La condicion para que la mascota sea bueno es que su salud tiene que ser superior a 250

    }

    override method efectoDeDano(plaga) {
        
        if(plaga.transmiteEnfermedades()){ // Valida si la plaga transmite enfermedades
        
            // Su la plaga transmite enfermedad la salud de la mascota bajara segun el daño de la plaga
            salud -= plaga.nivelDano()         

        }
    }

}

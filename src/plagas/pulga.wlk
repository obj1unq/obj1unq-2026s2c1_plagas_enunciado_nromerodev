import plaga.*

class Pulga inherits Plaga{

    override method nivelDano(){
        return poblacion * 2 // El nivle de daño de las pulgas es equivalente al doble de su poblacion
    }

}
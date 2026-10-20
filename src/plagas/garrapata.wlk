import plaga.*

class Garrapata inherits Plaga{

    override method nivelDano(){
        return poblacion * 2 // El nivel de daño siempre va a ser el doble de la poblacion de garrapatas
    }

    override method ataca(elemento){

        elemento.recibeAtaque(self) // Efecto sobre el elemento al recibir ataque
        poblacion += poblacion * 0.20 // El efecto sobre las garrapatas al hacer un ataque es que su poblacion aumente en un 20%
        poblacion.roundUp()
    }

}
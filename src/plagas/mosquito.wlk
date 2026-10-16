import plaga.*

class Mosquito inherits Plaga{
    
    override method nivelDano(){
        return poblacion // El nivel de daño va a ser igual al poblacion
    }


    override method transmiteEnfermedades(){
        
        // Para que transmita enfermedades aparte de la condicion base la poblacion tiene que ser multiplo de 3
        return (poblacion % 3 == 0) and super() 
    
    }

}
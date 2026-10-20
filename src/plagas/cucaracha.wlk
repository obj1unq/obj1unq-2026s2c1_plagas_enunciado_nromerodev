import plaga.*

class Cucaracha inherits Plaga{

    var pesoPromedio // Determina el peso promedio de la poblacion de cucarachas

    override method nivelDano(){ // 
        return poblacion / 2 // El nivel de daño de las cucarachas es proporcional a la mitad de su poblacion
    }

    override method transmiteEnfermedades(){

        // Aparte de la condicion base de las plagas para transmitir enfemedades las cucarachas necesitan superar un peso promedio de 10
        return pesoPromedio > 10 and super() 
    
    }

    override method ataca(elemento){
        super(elemento) // Ataque de la super clase
        pesoPromedio += 2 // Efecto añadido sobre las cucarachas al atacar se aumenta en 2 el peso promedio
    }

}
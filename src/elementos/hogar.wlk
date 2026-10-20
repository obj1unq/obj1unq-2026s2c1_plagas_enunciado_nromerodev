import elemento.Elemento


class Hogar inherits Elemento{
    
    var nivelDeMugre // Indica nivel de mugre en el hogar
    const confortQueOfrece // Indica nivel de confort en el hogar

    override method esBueno(){ 

        // Para que sea bueno la mitad de nivel de confort tiene que ser superior a  nivelDeMugre
        return (confortQueOfrece/2) > nivelDeMugre  

    }

    override method efectoDeDano(plaga){ 

        nivelDeMugre += plaga.nivelDano() // El nivel de mugre aumenta en manera proporsional al nivel de dano de la plaga
    
    }

}
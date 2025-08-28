object pepe {
    // Atributos
	var categoria=gerente
    var bonoResultados=bonoPorcentaje
    // var bonoPresentismo
    var faltas=0




    // Comportamientos
    // method sueldo(){
    //     return categoria.neto() + bonoResultados.valor() + bonoPresentismo.valor(self)
    // }

    // Getters
    method categoria(){return categoria}
    method bonoResultados(){return bonoResultados}
    // method bonoPresentismo(){return bonoPresentismo}
    method faltas(){return faltas}
    method neto(){return self.categoria().neto()}
    

    // Setters
    method categoria(_categoria){
        categoria = _categoria
    }
    method bonoResultados(_bonoResultados){
        bonoResultados = _bonoResultados
    }
    // method bonoPresentismo(_bonoPresentismo){
    //     bonoPresentismo = _bonoPresentismo
    // }
    method faltas(_faltas){
        faltas = _faltas
    }
}

// Categorías
object gerente{
    var neto=15000
    method neto(){return neto}
}
object cadete {
  var neto=20000
  method neto(){return neto}
}

// Bono por resultados
// El porcentaje necesita una referencia al empleado, y para no romper con el polimorfismo debo mantener la misma firma en los otros 2 bonos...
object bonoPorcentaje {
  method valor(empleado) {
    return empleado.neto() * 0.1
  }
}
object bonoFijo {
  method valor(empleado){
    return 800
  }
}
object bonoNulo {
  method valor(empleado){
    return 0
  }
}

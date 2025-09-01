object pepe {
    // Atributos
	var categoria=categoriaGerente
  var bonoResultado=bonoResPorcentaje
  var bonoPresentismo=bonoPresNormal
  var faltas=0

    // Comportamientos
    method sueldo(){
        return categoria.neto() + bonoResultado.valor(self) + bonoPresentismo.valor(self)
    }

    // Getters
    method categoria(){return categoria}
    method bonoResultado(){return bonoResultado}
    method bonoPresentismo(){return bonoPresentismo}
    method faltas(){return faltas}
    method neto(){return self.categoria().neto()}
    

    // Setters
    method categoria(_categoria){
        categoria = _categoria
    }
    method bonoResultado(_bonoResultados){
        bonoResultado = _bonoResultados
    }
    method bonoPresentismo(_bonoPresentismo){
        bonoPresentismo = _bonoPresentismo
    }
    method faltas(_faltas){
        faltas = _faltas
    }
}

// Categorías
object categoriaGerente{
    var neto=15000
    method neto(){return neto}
}
object categoriaCadete {
  var neto=20000
  method neto(){return neto}
}

// Bono por resultados
// El porcentaje necesita una referencia al empleado, y para no romper con el polimorfismo debo mantener la misma firma en los otros 2 bonos...
object bonoResPorcentaje {
  method valor(empleado) {
    return empleado.neto() * 0.1
  }
}
object bonoResFijo {
  method valor(empleado){
    return 800
  }
}
object bonoNulo {
  method valor(empleado){
    return 0
  }
}

// Bono por presentismo
object bonoPresNormal {
  // Lo mejor seria solo dentro del método devolver un valor en formato expresion condicional, pero no conozco tal herramienta en wollok (en intro era un choose). Tampoco deja early returns el lenguaje. Asi que se me ocurrio trackear con una variable el resultado a devolver. *** Si falto más de 1 vez, no se setea nada y devuelve el valor por defecto $0 ***
  var valor=0
  method valor(empleado) {
     if(empleado.faltas() == 0){
        valor=2000
     }
     else if(empleado.faltas() == 1){
        valor=1000
     }
    return valor
  }
}
object bonoPresAjuste {
  var valor=0
  method valor(empleado) {
    if(empleado.faltas() == 0){
      valor=100
    }
    return valor
  }
}
object pepe {
	var property categoria=categoriaGerente
  var property bonoResultado=bonoResPorcentaje
  var property bonoPresentismo=bonoPresNormal
  var property faltas=0

    method sueldo(){
        return self.sueldoNeto() + self.extraPorResultado() + self.extraPorPresentismo()
    }

    method sueldoNeto(){
      return categoria.neto()
    }
    method extraPorResultado(){
      return bonoResultado.valor(self)
    }
    method extraPorPresentismo(){
      return bonoPresentismo.valor(self)
    }
}

// Categorías
object categoriaGerente{
  method neto(){
    return 15000
  }
}
object categoriaCadete {
  method neto(){
    return 20000
  }
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

// Válido para los 2 tipos de bonos
object bonoNulo {
  method valor(empleado){
    return 0
  }
}

// Bono por presentismo
object bonoPresNormal {
  method valor(empleado){
    return if(empleado.faltas() == 0) 2000 else if(empleado.faltas() == 1) 1000 else 0
  }
}
object bonoPresDemagogico {
  method valor(empleado){
    return if (empleado.sueldoNeto() < 18000) 500 else 300
  }
}
object bonoPresAjuste {
  method valor(empleado){
    return if (empleado.sueldoNeto() > 0) 0 else 100
  }
}

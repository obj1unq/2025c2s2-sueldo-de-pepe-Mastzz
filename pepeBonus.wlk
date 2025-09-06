import pepe.*

object sofia {
    var property categoria = categoriaGerente
    var property bonoResultado = bonoResPorcentaje

    method sueldo(){
        return self.sueldoNeto() + self.extraPorResultado()
    }
    method sueldoNeto(){
        return categoria.neto() * 1.3
    }
    method extraPorResultado(){
        return bonoResultado.valor(self)
    }

}

// Nuevas categorias
object categoriaVendedor {
  var property muchasVentas = false
  const netoBase = 16000
  method activarAumentoPorMuchasVentas(){
    muchasVentas = true
  }
  method desactivarAumentoPorMuchasVentas(){
    muchasVentas = false
  }
  method neto(){
    return if (muchasVentas) netoBase * 1.25 else netoBase 
  }
}

object medioTiempo {
  var property categoriaBase = null
  method neto(){
    return categoriaBase.neto() / 2
  }
}
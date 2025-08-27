object pepe {
    // Atributos
	var categoria=gerente
    // var bonoResultados
    // var bonoPresentismo
    var faltas=0




    // Comportamientos
    // method sueldo(){
    //     return categoria.neto() + bonoResultados.valor() + bonoPresentismo.valor(self)
    // }

    // Getters
    method categoria(){return categoria}
    // method bonoResultados(){return bonoResultados}
    // method bonoPresentismo(){return bonoPresentismo}
    method faltas(){return faltas}

    

    // Setters
    method categoria(_categoria){
        categoria = _categoria
    }
    // method bonoResultados(_bonoResultados){
    //     bonoResultados = _bonoResultados
    // }
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

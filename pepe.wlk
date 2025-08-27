object pepe {
    // Atributos
	var categoria
    var bonoResultados
    var bonoPresentismo
    var faltas=0




    // Comportamientos

    // Getters
    method categoria(){return categoria}
    method bonoResultados(){return bonoResultados}
    method bonoPresentismo(){return bonoPresentismo}
    method faltas(){return faltas}

    method sueldo(){
        return categoria.neto() + bonoResultados.valor() + bonoPresentismo.valor(self)
    }

    // Setters
    method categoria(_categoria){
        categoria = _categoria
    }
    method bonoResultados(_bonoResultados){
        bonoResultados = _bonoResultados
    }
    method bonoPresentismo(_bonoPresentismo){
        bonoPresentismo = _bonoPresentismo
    }
    method faltas(_faltas){
        faltas = _faltas
    }
}

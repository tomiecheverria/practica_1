def tiempo_en_palabras(tiempo)
    hora = tiempo.hour
    minuto = tiempo.min
    
    case minuto
    when 0..10
        result = Son las #{hora} en punto"
    when 11..20
      result = "Son las #{hora} y cuarto"
    when 21..34
      result ="Son las #{hora} y media"
    when 35..44
        result ="Son las #{hora + 1} menos veinticinco"
    when 45..55
        result ="Son las #{hora + 1} menos cuarto"
    when 56..59
        if hora == 23
            result ="Casi son las 00"
        else
            result ="Casi son las #{hora + 1}"
        end
    end
    result = result.gsub("/son\s+las/i", "Es la") if hora == 1
    return result
  end
  
def contar(string_principal, string_a_contar)
    # Usamos la función scan con una expresión regular que hace la búsqueda sin distinguir mayúsculas o minúsculas.
    matches = string_principal.scan(/#{Regexp.escape(string_a_contar)}/i)
    
    # Devolvemos la cantidad de coincidencias encontradas.
    return matches.size
  end
  
  # Ejemplo de uso
  cadena = "La casa es la casa más grande."
  subcadena = "casa"
  
  cantidad = contar(cadena, subcadena)
  puts "La subcadena '#{subcadena}' aparece #{cantidad} veces en la cadena."


  def contar_palabras(string_principal,string_a_contar)
      palabras=string_principal.downcase.split(" ")
      string_a_contar=string_a_contar.downcase
      
    
def reemplazar(input_string)
  # Utilizamos gsub con una expresión regular para buscar y reemplazar las llaves.
  result = input_string.gsub(/\{/, 'do\n').gsub(/\}/, '\nend')

  return result
end
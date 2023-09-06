def es_pantavolica_1?(cadena)
    vocales = ['a', 'e', 'i', 'o', 'u'] # %w[a e i o u]
    contador=0
    vocales.each do |vocal|
        if cadena.include?(vocal)
            contador+=1
        end
    end
    contador==5 
end

def es_pantavolica_2?(cadena)
    vocales= %w[a e i o u]
    contador = vocales.inject(0) do |acomulador, vocal|
        if cadena.include?(vocal)
            acomulador + 1
        end
        acomulador
    end
    contador==5
end
#inject, es un bloque que se tiene que guadar el resultado, se modifica automaticamente y se piere el valor
#each with object, se deve modificar manualmente , pero no se pierde el valor

def es_pantavolica?(cadena)
    vocales = ['a', 'e', 'i', 'o', 'u'] # %w[a e i o u]
    cadena=cadena.downcase
    vocales.all? {|vocal| cadena.include?(vocal)}
end 

test_cases= [
    {input: 'murcielago', output: true},
    {input: 'mrcelgo', output: false},
    {input: 'murcielag', output: false},
    {input: 'murcielagoo', output: false},
    {input: 'murcielagou', output: false},
]

test_cases.each do |test_case|
    if es_pantavolica?(test_case[:input]) == test_case[:output]
        puts "Test case passed: #{test_case[:input]}"
    else
        puts "Test with input #{test_case[:input]} failed"
    end
end
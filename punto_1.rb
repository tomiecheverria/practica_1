a=:p
s=String.new("hola")
array= Array.new([1,"hola", :foo])
array= Array.new(3)
array=Array.new(3, :foo)
array=Array.new(3){|i| i*2}
array=array.map{|i| i*2}
array=[1,"hola", :foo]

hash=Hash.new()
h = {:foo => 0, :bar => 1, :baz => 2}.q
h = {'foo': 0, 'bar': 1, 'baz': 2}
h # => {:foo=>0, :bar=>1, :baz=>2}

h = {foo: 0, bar: 1, baz: 2}
  h # => {:foo=>0, :bar=>1, :baz=>2}


  h = {'foo': 0, 'bar': 1, 'baz': 2}
  h # => {:foo=>0, :bar=>1, :baz=>2}
def metodo 
    puts "hola"
end 
#q: how do i make a comment 
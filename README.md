# FizzBuzz
An insane person's implementation of FizzBuzz in Ruby

#Examples
FizzBuzz.range(1..5)
#=> ["1", "2", "Fizz", "4", "Buzz"]

FizzBuzz.range(1..5, [['Odd', ->(i){ i.odd? }]])
#=> ["Odd", "2", "Odd", "4", "Odd"]

e = FizzBuzz.enumerator
e.next #=> "1"
e.next #=> "2"
e.next #=> "Fizz"
e.next #=> "4"
e.next #=> "Buzz"

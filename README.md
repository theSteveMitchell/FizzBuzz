# FizzBuzz
An insane person's implementation of FizzBuzz in Ruby

#Examples
```ruby
#array with custom size (default is 1..100)
FizzBuzz.range(1..5)
#=> ["1", "2", "Fizz", "4", "Buzz"]
```

````ruby
#array with custom range and triggers
FizzBuzz.range(1..5, [['Odd', ->(i){ i.odd? }]])
#=> ["Odd", "2", "Odd", "4", "Odd"]
```

```ruby
#enumerator with default range and triggers
e = FizzBuzz.enumerator
e.next #=> "1"
e.next #=> "2"
e.next #=> "Fizz"
e.next #=> "4"
e.next #=> "Buzz"
```

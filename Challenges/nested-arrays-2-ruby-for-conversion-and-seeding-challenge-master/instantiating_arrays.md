# Instantiating Arrays

What is the difference between the following code snippets?  What happens when each is run?

- `Array.new(5, rand(20))`
this approach starts by calling rand method between the 1-20 once and repeat it five time
- `Array.new(5) { rand(20) }`
this approach starts by calling random number from 1-20 per round till 5 numbers are called for the array.


# Cash

![](https://p-vvf5mjm.b1.n0.cdn.getcloudapp.com/items/WnurX9Ap/monedas.jpg?source=viewer&v=974fb6df07dd3f0d21183cb5a60c0186)

> This exercise is also borrowed from [CS50](https://cs50.harvard.edu/x/2020/), the Harvard introductory course to computer science. This will continue happening for sure 😁

This program should help you figuring out how is the least amount of coins you need to give change.

We will use peruvian coins (centimos) instead of US cents. The program should ask how many **"soles"** you owed as change. This number could be a float. For example `5.3` (5 soles and 30 centimos). Assuming that we have coins of 1sol, 50 centimos, 20 centimos and 10 centimos, which is the minimun amount of coins we need to give back 5 soles and 30 centimos?

This problem could be solved using a "greedy algorithm". This type the algorithms always takes the next available best choice reducing the problem as much as it can in each step. It doesn't guarantee an optimal solution because the `local` optimal solution could not be the `global` optimal solution. But in this case, this strategy will be optimal 💪🏼

So, if we want to take first the best option we should start with the coin with the biggest value, in this case with coins of 1 sol.

For 5.3 we can take 5 coins of 1 sol and the reminder will be 30 centimos.
Then we take 1 coin of 20 centimos and the new reminder is 10 centimos.
Finally we take 1 coin of 10 centimos and we are done.
In total we needed 7 coins.

The program should behave in this way:
```
$ ruby cash.rb     
Change owed: 5.30
7
$
```
```
$ ruby cash.rb     
Change owed: 7.6
9
$
```
```
$ ruby cash.rb     
Change owed: -5
Change owed: strings
Change owed: $anything
Change owed: 0.45
1
$
```

In the last example the program prompted the user until it got a non-negative number. Notice as welll that the program should round the number tu one decimal place (we don't have coins of 5 centimos or 1 centimo).

> It could be easier to work with centimos (integers) than with soles (floats) 👀

## Tests

To run the test, make sure you are in `/05cash` directory and execute `ruby cash.rb`

## Extra guidance

CS50 has a more in depth walkthrough about this problem. You can check it [here](https://cs50.harvard.edu/x/2020/psets/1/cash/).

> Remember that CS50 use C instead of ruby.
> This exercise in CS50 uses US coins so is not exactly the same exercise.
# Say Hello

This program should asks the user for they name and prints a hello message back, otherwise it prints a sad message.

In this example the user inputs "Diego"

```shell
$ ruby say_hello.rb
Whats your name?
Diego
Hello Diego! Welcome to the Ruby module.
$
```

In this example the user inputs nothing (only hits enter)

```shell
$ ruby say_hello.rb
Whats your name?

No one to say hello to. :cry:
$
```

Modify the file `say_hello.rb` to meet the requirements.

## Tests

To run the test, make sure you are in `/01say_hello` directory and execute `ruby say_hello_test.rb`

If everything is ok you will get back something like this where each dot (.) after "Running:" represents a passing test. In this case 2 passing tests = 2 dots (..) 🎉

```shell
$ ruby say_hello_test.rb
Run options: --seed 45484

# Running:

..

Finished in 0.001027s, 1947.4203 runs/s, 1947.4203 assertions/s.
2 runs, 2 assertions, 0 failures, 0 errors, 0 skips
```

If something went wrong you will see the error message with the failing test and the detail of what was expected and what was received

```shell
ruby say_hello/say_hello_test.rb
Run options: --seed 8500

# Running:

.F

Failure:
SayHelloTest#test_say_hello_when_user_enter_name [say_hello/say_hello_test.rb:19]:
User inputs: 'Diego'.
--- expected
+++ actual
@@ -1 +1 @@
-"Hello Diego! Welcome to the Ruby module."
+"Hola Diego! Bienvenido al modulo de Ruby."



rails test say_hello/say_hello_test.rb:11



Finished in 0.015343s, 130.3526 runs/s, 130.3526 assertions/s.
2 runs, 2 assertions, 1 failures, 0 errors, 0 skips
```

In the example above the test inputed `"Diego"` and the expected response was `"Hello Diego! Welcome to the Ruby module."` but instead it receive `"Hola Diego! Bienvenido al modulo de Ruby."`. So my mistake was that I wrote the response in Spanish instead of English 😅

When you get an error, analize carefully the `expected` value and the `actual` your program is generating. Go back to your code and pay attention on the details. Surely you will figure it out! 💪🏼 If you get stuck, as for help in #help 👨‍💻

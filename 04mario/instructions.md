# Mario

> This exercise is borrowed from [CS50](https://cs50.harvard.edu/x/2020/), the Harvard introductory course to computer science 😁

The exercise is called Mario because toward the end of World 1-1 in Nintendo’s Super Mario Brothers, Mario must ascend right-aligned pyramid of blocks like this one:

![](https://cs50.harvard.edu/x/2020/psets/1/mario/less/pyramid.png)

This program should asks the user for `height` and print a right-aligned pyramid made of hashes (`#`) of that height.

Here some examples:

```
$ ruby mario.rb     
Pyramid height: 8
       #
      ##
     ###
    ####
   #####
  ######
 #######
########
$
```
```
$ ruby mario.rb     
Pyramid height: 4
   #
  ##
 ###
####
$
```
```
$ ruby mario.rb     
Pyramid height: 2
 #
##
$
```
```
$ ruby mario.rb     
Pyramid height: 1
#
$
```
The heigh should be between 1 and 8. If the user input is something different, the program should ask again and again until get a valid number:
```
$ ruby mario.rb     
Pyramid height: 0
Pyramid height: -5
Pyramid height: anything!
Pyramid height: 5
    #
   ##
  ###
 ####
#####
$
```

## Tests

To run the test, make sure you are in `/04mario` directory and execute `ruby mario_test.rb`

## Extra guidance

CS50 has a more in depth walkthrough about this problem. You can check it [here](https://cs50.harvard.edu/x/2020/psets/1/mario/less/).

> CS50 use C instead of ruby.
> C and Ruby share the main programming concepts but the syntax is not the same, it could confuse you more than help you. So be careful.
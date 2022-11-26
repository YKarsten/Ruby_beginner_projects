# Ruby beginner projects

An assortment of simple beginner projects written in ruby.

## Description

To learn the basics of ruby, the Odin project curriculum offers a number of small coding projects. My implementation of these excersises can be found here. Each file is a seperate project that accomplishes a specific task. Some implement an algorithm, others code for a small game.

### bubble_sort.rb

An algorithm that takes an array of numerical values and sorts them in  ascending order. The algorithm compares two adjacent values and switches their position to match an ascending order from left to right.
This procedure will repeat in a loop until the array is fully sorted: Indicated by the if statement in ln 11 and the boolean assignment in ln 13.

key methods: method, loop, boolean, array

### caesar_cypher.rb

A simple encryption algorithm/ a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet.

The method takes a string an integer input. The string is split into individual letters that are translated into ascii values (65-90: UPCASE & 97-122: lowcase). Ascii values are "normalized" to a number range from 1-26 and added to the input integer value. A Modulo Operation of %26 yields an ascii value between 1 and 26 that corresponds to the encrypted letter output. In case of negative integer inputs, the value is added by 26 until the integer becomes a positive value. Only letters, but no special characters are encrypted.
The individual characters are joined back together and presented as an output string.

key methods: method, #.map, if-else statement, ascii values, modulo operation

### script.rb 

### stockpicker.rb

A simulated stock picker scenario. The method takes an input array of integer values. The index corresponds to the date, the value is a price value. The method checks and outputs the best day to buy and sell stocks for maximum profit.

A pair of two price values is compared and the index of the lower value is stored (low_price_index). The price value for each low_price candidate is compared to the highest value in the input array following the low_price_index position. Within this newly generated array of profits take the max value and output the corresponding index and values for the buy_day and buy_price as well as the sell_day and profit margin.

key methods: method, if-else statement, array, #.push, #.index, #.each_cons, #.each 


### substring.rb

"Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found." (TOP, "Project: Sub String")

The methods takes a string and a specified dictionary array of strings as input. Using the #.each method the dictionary strings are compared to the input string. #.scan returns an array of matched strings, thus #.scan.length corresponds to the number of hits in dictionary.
An output hash is populated with {dictionary_entry: #hit} unless #hit ==0 and returned to the user.

key methods: method, hash, #.each, #.scan

### tic_tac_toe.rb

A simple game of tic tac toe that can be played with two players in the console.

Using a class (Board), a 3x3 gameboard instance is generated and populated with values 1..9. Using a class (Player), two player instances are generated. Each player can state their name and preferred symbol by propted user inputs. After the user initilization the board is printed to the console and players make their decision to place a symbol. After each players turn the board is updated. The method "win" brute force checks for a winning constellation of symbols after each turn. Once the game is concluded either by win or draw the game ends.

key methods: method, class, instance variable, variable scope, if-else statements

## Getting Started

### Dependencies

colorize gem

### Installing

gem install colorize

### Executing program

* Copy the source code and run it on "Ruby Online Compiler & Interpreter - Replit"
https://replit.com/new/ruby

## Help


## Authors

Yannik Karsten

## Version History

* 0.1
    * Initial Release

## License


## Acknowledgments

Inspiration, code snippets, etc.
* [awesome-readme](https://github.com/matiassingers/awesome-readme)
* [colorize gem](https://github.com/fazibear/colorize)

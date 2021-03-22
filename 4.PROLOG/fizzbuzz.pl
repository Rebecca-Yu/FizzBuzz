#!/usr/bin/gprolog

% program: fizzbuzz                %
% author:  Rebecca Yu (19778914)   %
% date:    21/10/2020              %


% RULES

% if NUMBER is divisible by 15, replace number with word: FIZZ BUZZ
fizzbuzz('FIZZ BUZZ', X) :- 0 is X mod 15.

% if NUMBER is divisible by 3, replace number with word: FIZZ 
fizzbuzz('FIZZ', X) :- 0 is X mod 3.

% if NUMBER is divisible by 5, replace number with word: BUZZ 
fizzbuzz('BUZZ', X) :- 0 is X mod 5.

% else leave NUMBER as is 
fizzbuzz(X,X) :- 0 is X mod X.

% print fizzbuzz term
printTerm(X) :- write(X), nl.

% main function
main :- 
		% create list containing numbers 1 to 1000
		bagof(N, between(1,1000,N), NumList), 
		% apply fizzbuzz rule to all numbers in numList 
		% input pair for fizzbuzz rule is (number, term)
		% --> calculates "term" based on number & stores term in a list
		maplist(fizzbuzz,FizzBuzzList, NumList),
		% prints all fizz buzz terms stored in FizzBuzzList
		maplist(printTerm,FizzBuzzList).   


% QUERIES
:- initialization(main).
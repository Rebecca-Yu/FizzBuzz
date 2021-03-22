"program: fizzbuzz"
"author:  Rebecca Yu (19778914)"
"date:    30/09/2020"

"loop, incrementing NUM from 1 to 100 (included)"
1 to: 100 do: [: num |

	((num \\ 15) == 0) 
	"if NUM is divisible by 15, replace number with word: FIZZ BUZZ"
	ifTrue: [
	    'FIZZ BUZZ' printNl
	]
	ifFalse: [
		
		((num \\ 3) == 0)
		"if NUM is divisible by 3, replace number with word: FIZZ"
		ifTrue: [
			'FIZZ' printNl
		]
		ifFalse: [
			
			((num \\ 5) == 0)
			"if NUM is divisible by 5, replace number with word: BUZZ"
			ifTrue: [ 
				'BUZZ' printNl
			]
			"else print NUM as is"
			ifFalse: [
				num printNl
			]"end if"
			
		]"end if"
		
	] "end if"
	
] ! "end loop"

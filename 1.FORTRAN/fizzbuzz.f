c program: fizzbuzz
c author:  Rebecca Yu (19778914)
c date:    14/08/2020
 
      program fizzbuzz
      integer num

c loop, incrementing NUM from 1 to 100 (included)
	  do 29 num = 1, 100

c if NUM is divisible by 15, replace number with word: FIZZ BUZZ
		  if (mod(num,15) .EQ. 0) then
	         write (*,*) 'FIZZ BUZZ'

c if NUM is divisible by 3, replace number with word: FIZZ     
		  elseif (mod(num,3) .EQ. 0) then
	         write (*,*) 'FIZZ'

c if NUM is divisible by 5, replace number with word: BUZZ      
		  elseif (mod(num,5) .EQ. 0) then
	         write (*,*) 'BUZZ'

c else print NUM as is    
		  else
			 write(*,26) num
 26          format (I3)
	      endif

 29   continue
 
      stop
      end

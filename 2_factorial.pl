factorial(0, 1).

factorial(N, F):- 
	N > 0,
	NM is N - 1, 
	factorial(NM, F1), 
	F is F1 * N.

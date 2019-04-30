:-dynamic(suma/1), dynamic(suma/2).

menu:-write('OPERACI�N SUMA'),nl,
    write('Escribe el n�mero:'),nl,
    read(X),
    suma(X).

suma(0,0):-
     !.
suma(N,R) :-
     A is N-1, suma(A,Ra),R is N+Ra.

suma(X):-
    suma(X,R),
    nl,
    write('-----------------------------------------------------------------------------------------------------------------'),nl,
write(' El resultado es :'),write(R),
    nl,
    write('-----------------------------------------------------------------------------------------------------------------').

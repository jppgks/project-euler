% time(problem1(_)).
%   5,318 inferences, 0.000 CPU in 0.000 seconds (99% CPU, 11923767 Lips)

problem1(Result) :-
    mul_sum(1000,3,3,5,0,Result).

mul_sum(N,N,_,_,S,S).
mul_sum(N,M,X,Y,S,R) :-
    N > M,
    MM is M + 1,
    ( (M mod X =:= 0, !; M mod Y =:= 0) -> SS is S + M ; SS = S ),
    mul_sum(N,MM,X,Y,SS,R).

:- begin_tests(mul_sum).

test(mul_sum, all(X==[233168])) :-
    mul_sum(1000,3,3,5,0,X).

:- end_tests(mul_sum).


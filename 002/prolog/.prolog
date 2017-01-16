% ?- time(problem2(Result)).
%   35 inferences, 0.000 CPU in 0.000 seconds (70% CPU, 1666667 Lips)

problem2(Result) :-
    even_fib(4000000,0,2,2,Result).

even_fib(Max,E1,E2,Sum,Result) :-
    En is E1 + (4 * E2), % Recursive property of even Fibonacci numbers
    En < Max, !,
    even_fib(Max,E2,En,Sum+En,Result).
even_fib(_,_,_,Sum,Result) :-
    Result is Sum.


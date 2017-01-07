% time(problem2(Result)).
%   163 inferences, 0.000 CPU in 0.000 seconds (86% CPU, 8150000 Lips)

problem2(Result) :-
    forward_fib(4000000,1,1,0,Result).

forward_fib(Max,F1,F2,R,Sum) :-
    F2 < Max,
    FF is F1 + F2,
    ( (FF mod 2 =:= 0, !) -> RR is R + FF ; RR = R ),
    forward_fib(Max,F2,FF,RR,Sum).
forward_fib(_,_,_,Sum,Sum).


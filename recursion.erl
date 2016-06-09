-module(recursion).
-author("warior").

%% API
-export([fac/1, len/1, tail_fac/1, tail_len/1, tail_zip/2]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0 -> N*fac(N-1).

tail_fac(N) -> tail_fac(N, 1).

tail_fac(0, Acc) -> Acc;
tail_fac(N, Acc) -> tail_fac(N-1, Acc*N).

len([]) -> 0;
len([_|Sp]) -> 1+len(Sp);
len(_) -> 1.

tail_len(Sp) -> tail_len(Sp, 0).

tail_len([], Acc) -> Acc;
tail_len([_|Sp], Acc) -> tail_len(Sp, Acc+1).

tail_zip(X,Y) -> tail_zip(X,Y,[]).

tail_zip([],[], Acc) -> Acc;
tail_zip(_, [], Acc) -> Acc;
tail_zip([], _, Acc) -> Acc;
tail_zip([Xx|X], [Yy|Y], Acc) -> lists:reverse(tail_zip(X, Y, [{Xx, Yy}| Acc])).
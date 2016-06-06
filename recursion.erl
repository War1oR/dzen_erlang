-module(recursion).
-author("warior").

%% API
-export([fac/1, len/1, tail_fac/1]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0 -> N*fac(N-1).

tail_fac(N) -> tail_fac(N, 1).

tail_fac(0, Acc) -> Acc;
tail_fac(N, Acc) -> tail_fac(N-1, Acc*N).

len([]) -> 0;
len([_|Sp]) -> 1+len(Sp);
len(_) -> 1.
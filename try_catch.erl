-module(try_catch).
-author("warior").

%% API
-export([sword/1, knight/1]).

sword(1) -> throw(slice);
sword(2) -> erlang:error(cut_arm);
sword(3) -> exit(cut_leg);
sword(4) -> throw (punch) ;
sword(5) -> exit(cross_bridge);
sword(_) -> "prum".

knight(Attack) when is_function(Attack , 0) ->
  try
    at1 = lists:seq(1,23),
    Attack()
  of
    _ -> "None shall pass."
  catch
    throw:slice -> "It is but a scratch.";
    error:cut_arm -> "I've had worse.";
    exit:cut_leg -> "Come on you pansy!";
    _:_ -> "Just a flesh wound."
  end.
-module(base_syntax).
-author("warior").

%% API
-export([add/2, hello/0, add_two/1, help_me/1, beach/1, is_int/1, guard/1]).

add(X,Y) ->
  X + Y.

hello() ->
  io:format("Hi all ~n ls~n").

add_two (X) ->
  add(X,2).

help_me ( Animal ) ->
  Talk = if Animal == cat -> "meow";
            Animal == beef -> "mooo";
            Animal == dog -> "bark";
            true -> "fgdadfgna" end,
  io:format("~s, says ~s ! ~n", [Animal, Talk]).

beach ( Temperature ) ->
  case Temperature of
    {celsius , N} when N >= 20, N =< 45 ->
      'favorable ';
    {kelvin , N} when N >= 293, N =< 318 ->
      'scientifically favorable';
    {fahrenheit , N} when N >= 68, N =< 113 ->
      'favorable in the US';
    _ ->
      ' avoid beach '
  end.

is_int (Num) ->
  MyNum = if is_integer(Num) -> Num;
             true -> 0 end,
  io:format(MyNum).

guard (Num) when is_integer(Num)->
  Num;
guard (_) ->
  0.
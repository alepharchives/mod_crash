-module(mod_crash).
 
-export([do/1]).

-include_lib("inets/include/httpd.hrl").

-define(CONTENT_TYPE, "application/x-www-form-urlencoded; charset=UTF-8").

-spec do(#mod{}) -> {'proceed', _} | {'break', _} | 'done'.

do(Info) ->
    lager:debug("What's that ~p?", [now() - now()]),
    {'proceed', [Info#mod.data]}.


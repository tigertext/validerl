-type validerl_ext_call()   :: atom() | {atom(), atom()} |
                               {atom(), atom(), [any()]}.
-type validerl_type()       :: boolean | string | integer | {integer, bounds()} |
                               integer_list | {integer_list, bounds(), tuple()} |
                               validerl_ext_call() | [validerl_type()] |
                               fun((any()) -> {ok, any()} | {error, any()}).

%% Return types
-type validerl_bool()       :: {ok, boolean()}.
-type invaliderl_bool()     :: {error, {invalid_boolean, any()}}.
-type validerl_binary()     :: {ok, binary()}.
-type invaliderl_binary()   :: {error, {invalid_binary, any()}}.
-type validerl_int()        :: {ok, integer()}.
-type invaliderl_int()      :: {error, {invalid_integer, any()} |
                                       {out_of_valid_range, integer()}}.
-type bounds()              :: {undefined | integer(), undefined | integer()}.
-type validerl_string()     :: {ok, string()}.
-type invaliderl_string()   :: {error, {invalid_string, any()}}.
-type validerl_atom()       :: {ok, atom()}.
-type invaliderl_atom()     :: {error, {invalid_atom, any()}}.
-type validerl_tuple()      :: {ok, tuple()}.
-type invaliderl_tuple()    :: {error, {bad_arity, integer()}}.
-type invaliderl_list()     :: {error, {not_a_list, any()}}.

-type validerl_value()   :: validerl_bool() | validerl_binary() |
                            validerl_int() | validerl_string() |
                            validerl_atom() | validerl_tuple().
-type invaliderl_value() :: invaliderl_bool() | invaliderl_binary() |
                            invaliderl_int() | invaliderl_string() |
                            invaliderl_atom() | invaliderl_tuple().
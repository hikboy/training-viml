
let bees = 32
let mice = 4

if bees < 1
    echo 'I suppose the  mice keep the bees out--'
elseif mice < 1
    echo '-- or the bees keep the mice out '
else
    echo 'I don''t know which '
endif

set noignorecase

let farewell = 'We love you. Ebenezer!'

echo toupper(farewell)

function! CheckCase(normal, upper)
    return a:normal == a:upper ? 'Equal' : 'Not equal'
endfunction

function! CheckCaseSensitive(normal, upper)
    if a:normal ==# a:upper
        return 'Equal (case sensitive)'
    else
        return 'Not Equel (case sensitive)'
    endif
endfunction

function! CheckCaseSensitive1(normal, upper)
    if a:normal ==? a:upper
        return 'Equal (case sensitive)'
    else
        return 'Not Equel (case sensitive)'
    endif
endfunction


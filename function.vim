
let g:quote = 'this is a global var'
let hi = 'this var without a prefix'

function! EchoQuote(quote)
    echo a:quote
endfunction

function! EchoQuote1(quote, ...)
    let year = a:1
    let author = a:000[1]
    echo 'In' . year . ', ' . author . 'said: "' . a:quote . '"'
endfunction

function! EchoQuote2()
    let l:quote = 'This is a local var'
    echo l:quote
    echo g:quote
    echo g:hi
    return l:quote
endfunction

let Example = function('EchoQuote1')
let q = 'This crocodile mouth is the perfect helmet all the family will enjoy'

echo call(Example, [q, '2014', 'Dr. Carl Grommy'])

"
"function! OpenMPC()
""    let cmd = "mpc --format '%title% (%artist%)' current"
"    let cmd = "mpc current"
"    echomsg system(cmd)[:-2]
"endfunction
"
"
"function! OpenMpc1()
"    let cmd = "mpc playlist"
"    let playlist = split(system(cmd), '\n')
"
"    new 
"
"    for track in playlist
"        if(playlist[0] == track)
"            execute "normal! I" . track
"        else
"            call append(line('$'), track)
"        endif
"    endfor
"endfunction
"
"function! OpenMpc2()
"    let cmd = "mpc playlist"
"    let playlist = split(system(cmd), '\n')
"    new
"    call append(0, playlist)
"endfunction

function! mpc#DisplayPlaylist()
    let cmd = "mpc --format '%position% %album% %albumartist% %date% %genre% %composer% %track% %disc% %comment% ' playlist"
    let playlist = split(system(cmd), '\n')

    new 

    for track in playlist
        if(playlist[0] == track)
            execute "normal! 1GdGI" . track
        else
            call append(line('$'), track)
        endif
    endfor
endfunction


function! mpc#PlaySong(no)
    let song = split(getline(a:no), " ")
    let results = split(system("mpc play " . song[0]), "\n")
    let message = '[mpc] NOW PLAYING: ' . results[0]
    echomsg message
endfunction


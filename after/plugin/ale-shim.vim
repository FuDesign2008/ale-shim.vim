

if &compatible || exists(':ALEFixDisable')
    finish
endif
let s:save_cpo = &cpoptions
set cpoptions&vim


function s:ALEFixDisable()
    let g:ale_fix_on_save=0
endfunction

function s:ALEFixEnable()
    let g:ale_fix_on_save=1
endfunction




command -nargs=0 ALEFixDisable call s:ALEFixDisable()
command -nargs=0 ALEFixEnable call s:ALEFixEnable()

let &cpoptions = s:save_cpo

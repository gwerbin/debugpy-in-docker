let g:remote_dap_host = '127.0.0.1'
let g:remote_dap_port = 9001

lua <<LUA
local dap = require('dap')

dap.adapters.generic_remote = function(callback, config)
  callback({
    type = 'server',
    host = vim.g.dap_host,
    port = vim.g.dap_port,
  })
end

dap.configurations.python = {
  {
    type = 'generic_remote',
    request = 'attach',
    name = 'Generic remote',
  },
}
LUA

nnoremap <localleader>do <cmd>call v:lua.dap.repl.open()<cr>
nnoremap <localleader>dc <cmd>call v:lua.dap.continue()<cr>
nnoremap <localleader>dx <cmd>call v:lua.dap.stop()<cr>
nnoremap <localleader>dr <cmd>call v:lua.dap.run_last()<cr>
nnoremap <localleader>dbb <cmd>call v:lua.dap.toggle_breakpoint()<cr>
nnoremap <localleader>dbB <cmd>call v:lua.dap.set_breakpoint()<cr>
nnoremap <localleader>dbe <cmd>call v:lua.dap.set_exception_breakpoints('uncaught')<cr>

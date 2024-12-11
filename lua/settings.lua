-- Lua Settings-Start.



require('neoruby-debugger').setup()

-- dap-python, Python PATH.
home = os.getenv("HOME")

    -- Use Python 3.11.x, Not Yet Support Python 3.12.x
if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then

    if vim.fn.isdirectory('C:Python3') == 1 then
        require('dap-python').setup('C:/Python3/python.exe')
    elseif vim.fn.isdirectory(home .. '/scoop') == 1 then
        require('dap-python').setup(home .. '/scoop/apps/python311/current/python.exe')
    end

elseif vim.fn.has('osxdarwin') == 1 or vim.fn.has('osx') == 1 then

    if vim.fn.isdirectory(home .. '/.pyenv') == 1 then
        require('dap-python').setup(home .. '/.pyenv/shims/python')
    elseif vim.fn.isdirectory(home .. '/.anyenv') == 1 then
        require('dap-python').setup(home .. '/.anyenv/envs/pyenv/shims/python')
    end

elseif vim.fn.has('linux') == 1 then

    if vim.fn.isdirectory(home .. '/.pyenv') == 1 then
        require('dap-python').setup(home .. '/.pyenv/shims/python')
    elseif vim.fn.isdirectory(home .. '/.anyenv') == 1 then
        require('dap-python').setup(home .. '/.anyenv/envs/pyenv/shims/python')
    end

else
    -- other OS, python path is here
end

require('dap-python').test_runner = 'pytest'
require('dap-go').setup()
require('dapui').setup()
require('ddc_source_lsp_setup').setup()

local mason = require('mason')
local lspconfig = require('lspconfig')
local mason_lspconfig = require('mason-lspconfig')

 mason.setup({
   ui = {
     icons = {
       package_installed = "✓",
       package_pending = "➜",
       package_uninstalled = "✗"
     }
   }
 })

mason_lspconfig.setup()
mason_lspconfig.setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({})
    end,
    solargraph = function()
        lspconfig.solargraph.setup({})
    end,
    pylsp = function()
        lspconfig.pylsp.setup({})
    end,
    gopls = function()
        lspconfig.gopls.setup({})
    end,
    denols = function()
        lspconfig.denols.setup({})
    end,
    rust_analyzer = function()
        lspconfig.rust_analyzer.setup({})
    end,
})

-- Lua Settings-End.

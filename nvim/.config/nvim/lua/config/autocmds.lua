local api = vim.api

-- don't auto comment new line
api.nvim_create_autocmd("BufEnter", { command = [[set formatoptions-=cro]] })

-- wrap words "softly" (no carriage return) in mail buffer
api.nvim_create_autocmd("Filetype", {
  pattern = "mail",
  callback = function()
    vim.opt.textwidth = 0
    vim.opt.wrapmargin = 0
    vim.opt.wrap = true
    vim.opt.linebreak = true
    vim.opt.columns = 80
    vim.opt.colorcolumn = "80"
  end,
})

-- Highlight on yank
api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- go to last loc when opening a buffer
-- this mean that when you open a file, you will be at the last position
api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- auto close brackets
-- this
api.nvim_create_autocmd("FileType", { pattern = "man", command = [[nnoremap <buffer><silent> q :quit<CR>]] })

-- show cursor line only in active window
local cursorGrp = api.nvim_create_augroup("CursorLine", { clear = true })
api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
  pattern = "*",
  command = "set cursorline",
  group = cursorGrp,
})
api.nvim_create_autocmd(
  { "InsertEnter", "WinLeave" },
  { pattern = "*", command = "set nocursorline", group = cursorGrp }
)

-- Enable spell checking for certain file types
api.nvim_create_autocmd(
  { "BufRead", "BufNewFile" },
  -- { pattern = { "*.txt", "*.md", "*.tex" }, command = [[setlocal spell<cr> setlocal spelllang=en,de<cr>]] }
  {
    pattern = { "*.txt", "*.md", "*.tex" },
    callback = function()
      vim.opt.spell = true
      vim.opt.spelllang = "en"
    end,
  }
)

-- vim.api.nvim_create_autocmd("ColorScheme", {
--   callback = function()
--     vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
--     vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "Normal" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
--   end,
-- })

-- close some filetypes with <q>
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("close_with_q", { clear = true }),
  pattern = {
    "PlenaryTestPopup",
    "help",
    "lspinfo",
    "man",
    "notify",
    "qf",
    "spectre_panel",
    "startuptime",
    "tsplayground",
    "neotest-output",
    "checkhealth",
    "neotest-summary",
    "neotest-output-panel",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})

-- resize neovim split when terminal is resized
vim.api.nvim_command("autocmd VimResized * wincmd =")

-- fix terraform and hcl comment string
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("FixTerraformCommentString", { clear = true }),
  callback = function(ev)
    vim.bo[ev.buf].commentstring = "# %s"
  end,
  pattern = { "terraform", "hcl" },
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
  callback = function(event)
    local map = function(keys, func, desc)
      vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
    end

    map("gl", vim.diagnostic.open_float, "Open Diagnostic Float")
    map("K", vim.lsp.buf.hover, "Hover Documentation")
    map("gs", vim.lsp.buf.signature_help, "Signature Documentation")
    map("gD", vim.lsp.buf.declaration, "Goto Declaration")

    map("<leader>v", "<cmd>vsplit | lua vim.lsp.buf.definition()<cr>", "Goto Definition in Vertical Split")

    local wk = require("which-key")
    wk.add({
      { "<leader>la", vim.lsp.buf.code_action, desc = "Code Action" },
      { "<leader>lA", vim.lsp.buf.range_code_action, desc = "Range Code Actions" },
      { "<leader>ls", vim.lsp.buf.signature_help, desc = "Display Signature Information" },
      { "<leader>lr", vim.lsp.buf.rename, desc = "Rename all references" },
      { "<leader>lf", vim.lsp.buf.format, desc = "Format" },
      { "<leader>lc", require("config.utils").copyFilePathAndLineNumber, desc = "Copy File Path and Line Number" },
      { "<leader>Wa", vim.lsp.buf.add_workspace_folder, desc = "Workspace Add Folder" },
      { "<leader>Wr", vim.lsp.buf.remove_workspace_folder, desc = "Workspace Remove Folder" },
      {
        "<leader>Wl",
        function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end,
        desc = "Workspace List Folders",
      },
    })

    local function client_supports_method(client, method, bufnr)
      if vim.fn.has("nvim-0.11") == 1 then
        return client:supports_method(method, bufnr)
      else
        return client.supports_method(method, { bufnr = bufnr })
      end
    end

    local client = vim.lsp.get_client_by_id(event.data.client_id)
    if
      client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_documentHighlight, event.buf)
    then
      local highlight_augroup = vim.api.nvim_create_augroup("lsp-highlight", { clear = false })
      vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
        buffer = event.buf,
        group = highlight_augroup,
        callback = vim.lsp.buf.document_highlight,
      })

      vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
        buffer = event.buf,
        group = highlight_augroup,
        callback = vim.lsp.buf.clear_references,
      })

      vim.api.nvim_create_autocmd("LspDetach", {
        group = vim.api.nvim_create_augroup("lsp-detach", { clear = true }),
        callback = function(event2)
          vim.lsp.buf.clear_references()
          vim.api.nvim_clear_autocmds({ group = "lsp-highlight", buffer = event2.buf })
        end,
      })
    end

    if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_inlayHint, event.buf) then
      map("<leader>th", function()
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf }))
      end, "[T]oggle Inlay [H]ints")
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

-- vim.api.nvim_set_hl(0, "bladeDirective", { fg = "#ff0000", bg = "NONE", italic = false })

-- vim.api.nvim_create_autocmd("LspAttach", {
--     group = vim.api.nvim_create_augroup("lsp", { clear = true }),
--     callback = function(args)
--         vim.api.nvim_create_autocmd("BufWritePre", {
--             buffer = args.buf,
--             callback = function()
--                 vim.cmd("lua vim.lsp.buf.format()")
--                 -- vim.lsp.buf.format({ async = false, id = args.data.client_id })
--             end,
--         })
--     end,
-- })

-- vim.api.nvim_create_autocmd("BufWritePre", {
--     callback = function()
--         vim.cmd("lua vim.lsp.buf.format()")
--     end,
-- })

-- vim.api.nvim_create_augroup('FixStatuslineHooks', { clear = true })
-- vim.api.nvim_create_autocmd('ModeChanged', {
--   group = 'FixStatuslineHooks',
--   callback = function()
--     local autocmds = vim.api.nvim_get_autocmds({ event = "ModeChanged" })
--     local last = autocmds[#autocmds]
--     if last.group_name == 'tpipeline' then return end
--
--     vim.cmd([[
--       augroup tpipeline
--       autocmd!
--       augroup END
--
--       if g:tpipeline_clearstl
--         let g:tpipeline_statusline = ''
--       endif
--
--       call tpipeline#build_hooks()
--     ]])
--   end

-- Simple and reliable explorer search integration
-- vim.keymap.set("n", "<leader>es", function()
--   -- Check if we're in a snacks picker buffer
--   if vim.bo.filetype == "snacks_picker_list" then
--     -- Get the current line content to extract the file path
--     local line = vim.api.nvim_get_current_line()
--
--     -- Simple pattern matching to extract file path from the line
--     -- This will work regardless of the picker's internal API
--     local file_path = line:match("%s*(.+)$") -- Extract everything after whitespace
--
--     if file_path and file_path ~= "" then
--       -- Clean up the path (remove any icons or formatting)
--       file_path = file_path:gsub("^[%s%p]*", "") -- Remove leading whitespace and punctuation
--       local expanded = vim.fn.expand(file_path)
--
--       -- Close the current buffer/window
--       vim.cmd("q")
--
--       -- Schedule the search
--       vim.schedule(function()
--         if vim.fn.isdirectory(expanded) == 1 then
--           Snacks.picker.grep({ cwd = expanded })
--         elseif vim.fn.filereadable(expanded) == 1 then
--           local parent_dir = vim.fn.fnamemodify(expanded, ":h")
--           Snacks.picker.grep({ cwd = parent_dir })
--         else
--           -- Fallback: use current working directory
--           Snacks.picker.grep()
--         end
--       end)
--     else
--       vim.notify("Could not determine file path", vim.log.levels.WARN)
--     end
--   else
--     -- Not in explorer, open it
--     Snacks.explorer()
--   end
-- end, { desc = "Explorer search here", silent = true })

-- Alternative: Add the keymap only when in explorer using autocmd
vim.api.nvim_create_autocmd("FileType", {
  pattern = "snacks_picker_list",
  callback = function(event)
    vim.keymap.set("n", "<leader>/", function()
      -- Get current line and extract path
      local line = vim.api.nvim_get_current_line()
      local file_path = line:match("[^%s]*[^%s%p]") -- Match file path pattern

      if file_path then
        local expanded = vim.fn.expand(file_path)
        vim.cmd("q") -- Close picker

        vim.schedule(function()
          if vim.fn.isdirectory(expanded) == 1 then
            Snacks.picker.grep({ cwd = expanded })
          else
            local parent_dir = vim.fn.fnamemodify(expanded, ":h")
            Snacks.picker.grep({ cwd = parent_dir })
          end
        end)
      end
    end, {
      buffer = event.buf,
      desc = "Search in highlighted directory",
      silent = true,
    })
  end,
})
-- })

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "php", "blade" },
    callback = function ()
        vim.lsp.start({
            name = "laravel-ls",

            -- if laravel ls is in your $PATH
            cmd = { 'laravel-ls' },
            
            -- Absolute path
            -- cmd = { '/path/to/laravel-ls/build/laravel-ls' },
            
            -- if you want to recompile everytime
            -- the language server is started.
            -- cmd = { '/path/to/laravel-ls/start.sh' },

            root_dir = vim.fn.getcwd(),
        })
    end
})

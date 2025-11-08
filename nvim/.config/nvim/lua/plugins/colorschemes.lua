return {
  {
    "catppuccin/nvim",
    priority = 1000,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        color_overrides = {
          all = {

            -- Custom Catppuccin/Ayu Colors
            -- rosewater = "#aad94c", -- "#ea6962",
            -- flamingo = "#ffb454", -- "#ea6962",
            -- red = "#f07178", -- "#ea6962",
            -- maroon = "#95e6cb", -- "#ea6962",
            -- pink = "#f26d78", -- "#d3869b",
            -- mauve = "#d2a6ff", -- "#d3869b",
            -- peach = "#ff8f40", -- "#e78a4e",
            -- yellow = "#39bae6", -- "#d8a657",
            -- green = "#ffb454", -- "#a9b665",
            -- teal = "#aad94c", -- "#89b482",
            -- sky = "#73b8ff", -- "#89b482",
            -- sapphire = "#7fd962", -- "#89b482",
            -- blue = "#59c2ff", -- "#7daea3",
            -- lavender = "#d2a6ff", -- "#7daea3",
            -- text = "#bfbdb6",

            -- Custom Catppuccin/Cyberdream Colors
            -- rosewater = "#aad94c", -- "#ea6962",
            -- flamingo = "#ffb454", -- "#ea6962",
            -- red = "#f07178", -- "#ea6962",
            -- maroon = "#95e6cb", -- "#ea6962",
            -- pink = "#f26d78", -- "#d3869b",
            -- mauve = "#d2a6ff", -- "#d3869b",
            -- peach = "#ff8f40", -- "#e78a4e",
            -- yellow = "#39bae6", -- "#d8a657",
            -- green = "#ffb454", -- "#a9b665",
            -- teal = "#aad94c", -- "#89b482",
            -- sky = "#73b8ff", -- "#89b482",
            -- sapphire = "#7fd962", -- "#89b482",
            -- blue = "#59c2ff", -- "#7daea3",
            -- lavender = "#d2a6ff", -- "#7daea3",
            -- text = "#bfbdb6",

            --   subtext1 = "#d5c4a1",
            --   subtext0 = "#bdae93",
            --   overlay2 = "#a89984",
            --   overlay1 = "#928374",
            --   overlay0 = "#595959",
            --   surface2 = "#4d4d4d",
            --   surface1 = "#404040",
            --   surface0 = "#292929",
            -- base = "#0b0e14",
            -- mantle = "#0d1017", -- "#191b1c",
            -- crust = "#131721", -- "#141617",

            base = "#011526",
            mantle = "#011526", -- "#191b1c",
            -- crust = "#081f31", -- "#141617",
            -- surface2 = "#081f31",
            -- surface1 = "#081f31",
            -- surface0 = "#081f31",
            crust = "#081f31", -- "#141617",
            surface2 = "#081f31",
            surface1 = "#081f31",
            surface0 = "#0c2337",
          },

          -- all = {
          --   rosewater = "#f29668", -- "#ea6962",
          --   flamingo = "#f29668", -- "#ea6962",
          --   red = "#f26d78", -- "#ea6962",
          --   maroon = "#39bae6", -- "#ea6962",
          --   pink = "#f07178", -- "#d3869b",
          --   mauve = "#d2a6ff", -- "#d3869b",
          --   peach = "#ff8f40", -- "#e78a4e",
          --   yellow = "#e6b673", -- "#d8a657",
          --   green = "#7fd962", -- "#a9b665",
          --   teal = "#95e6cb", -- "#89b482",
          --   sky = "#50c2ff", -- "#89b482",
          --   sapphire = "#95e6cb", -- "#89b482",
          --   blue = "#59c2ff", -- "#7daea3",
          --   lavender = "#d2a6ff", -- "#7daea3",
          --   --   text = -- "#ebdbb2",
          --   --   subtext1 = "#d5c4a1",
          --   --   subtext0 = "#bdae93",
          --   --   overlay2 = "#a89984",
          --   --   overlay1 = "#928374",
          --   --   overlay0 = "#595959",
          --   --   surface2 = "#4d4d4d",
          --   --   surface1 = "#404040",
          --   --   surface0 = "#292929",
          --   base = "#011526",
          --   mantle = "#081f31", -- "#191b1c",
          --   crust = "#102A40", -- "#141617",
          -- },
        },
        transparent_background = false,
        show_end_of_buffer = false,
        integration_default = true,
        no_bold = true,
        no_italic = true,
        no_underline = true,
        integrations = {
          blink_cmp = {
            style = "bordered",
          },
          snacks = {
            enabled = true,
            -- indent_scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
          },
          -- barbecue = { dim_dirname = true, bold_basename = true, dim_context = false, alt_background = false },
          -- cmp = true,
          gitsigns = true,
          -- hop = true,
          -- illuminate = { enabled = true },
          native_lsp = { enabled = true, inlay_hints = { background = true } },
          -- neogit = true,
          -- neotree = true,
          semantic_tokens = true,
          treesitter = true,
          treesitter_context = true,
          -- vimwiki = true,
          which_key = true,
          -- aerial = true,
          fidget = true,
          mason = true,
          neotest = true,
          dap_ui = true,
          -- telescope = {
          --   enabled = true,
          --   style = "nvchad",
          -- },
        },
        highlight_overrides = {
          all = function(colors)
            return {
              -- StatusLine = { bg = colors.mantle, fg = colors.text },
              -- GitBranch = { bg = colors.teal, fg = colors.base },
              -- GitBranchLabel = { bg = colors.teal, fg = colors.base },
              -- NormalMode = { bg = colors.blue, fg = colors.base },
              -- InsertMode = { bg = colors.green, fg = colors.base },
              -- VisualMode = { bg = colors.mauve, fg = colors.base },
              -- ReplaceMode = { bg = colors.yellow, fg = colors.base },
              -- CommandMode = { bg = colors.flamingo, fg = colors.base },
              -- TerminalMode = { bg = colors.red, fg = colors.base },
              -- LspError = { bg = none, fg = colors.red },
              -- LspWarning = { bg = none, fg = colors.peach },
              -- LspHint = { bg = none, fg = colors.mauve },
              -- LspInfo = { bg = none, fg = colors.blue },

              --       -- Completion menu styling
              --       Pmenu = { bg = colors.base, fg = colors.text },
              --       PmenuSel = { bg = colors.base, fg = colors.text },
              --       PmenuSbar = { bg = colors.base },
              --       PmenuThumb = { bg = colors.base },
              --       PmenuExtra = { bg = colors.base, fg = colors.subtext1 },
              --
              --       -- Floating windows
              NormalFloat = { bg = colors.base },
              FloatBorder = { bg = colors.base, fg = colors.surface2 },
              FloatTitle = { bg = colors.base, fg = colors.text },

              --       -- Blink.cmp specific highlighting
              --       BlinkCmpMenu = { bg = colors.base, fg = colors.text },
              --       BlinkCmpMenuBorder = { bg = colors.base, fg = colors.surface2 },
              --       BlinkCmpMenuSelection = { bg = colors.base, fg = colors.text },
              --       BlinkCmpScrollBarThumb = { bg = colors.base },
              --       BlinkCmpScrollBarGutter = { bg = colors.base },
              --       BlinkCmpLabel = { bg = colors.base, fg = colors.text },
              --       BlinkCmpLabelDeprecated = { bg = colors.base, fg = colors.overlay0, strikethrough = true },
              --       BlinkCmpLabelDetail = { bg = colors.base, fg = colors.subtext1 },
              --       BlinkCmpLabelDescription = { bg = colors.base, fg = colors.subtext1 },
              --       BlinkCmpKind = { bg = colors.base, fg = colors.peach },
              --       BlinkCmpSource = { bg = colors.base, fg = colors.overlay1 },
              --       BlinkCmpGhostText = { fg = colors.overlay0, italic = false },
              --       BlinkCmpDoc = { bg = colors.base, fg = colors.text },
              --       BlinkCmpDocBorder = { bg = colors.base, fg = colors.surface2 },
              --       BlinkCmpDocSeparator = { bg = colors.base, fg = colors.surface1 },
              --       BlinkCmpDocCursorLine = { bg = colors.base },
              --       BlinkCmpSignatureHelp = { bg = colors.base, fg = colors.text },
              --       BlinkCmpSignatureHelpBorder = { bg = colors.base, fg = colors.surface2 },
              --       BlinkCmpSignatureHelpActiveParameter = { bg = colors.base, fg = colors.peach, bold = true },
              --
              --       -- Snacks.nvim picker NvChad style
              --       SnacksPicker = { bg = colors.base },
              --       SnacksPickerBorder = { fg = colors.surface0, bg = colors.base },
              --       SnacksPickerPreview = { bg = colors.base },
              --       SnacksPickerPreviewBorder = { fg = colors.base, bg = colors.base },
              --       SnacksPickerPreviewTitle = { fg = colors.base, bg = colors.green },
              --       SnacksPickerBoxBorder = { fg = colors.base, bg = colors.base },
              --       SnacksPickerInputBorder = { fg = colors.surface2, bg = colors.base },
              --       SnacksPickerInputSearch = { fg = colors.text, bg = colors.base },
              --       SnacksPickerList = { bg = colors.base },
              --       SnacksPickerListBorder = { fg = colors.base, bg = colors.base },
              --       SnacksPickerListTitle = { fg = colors.base, bg = colors.base },
              --
              --       -- Additional picker elements
              SnacksPickerDir = { fg = colors.blue },
              SnacksPickerFile = { fg = colors.text },
              SnacksPickerMatch = { fg = colors.peach, bold = true },
              SnacksPickerCursor = { bg = colors.surface0, fg = colors.text },
              SnacksPickerSelected = { bg = colors.surface0, fg = colors.text },
              SnacksPickerIcon = { fg = colors.blue },
              SnacksPickerSource = { fg = colors.overlay1 },
              SnacksPickerCount = { fg = colors.overlay1 },
              SnacksPickerFooter = { fg = colors.overlay1 },
              SnacksPickerHeader = { fg = colors.text, bold = true },
              SnacksPickerSpecial = { fg = colors.peach },
              SnacksPickerIndent = { fg = colors.surface1 },
              SnacksPickerMulti = { fg = colors.peach },
              SnacksPickerTitle = { fg = colors.text, bold = true },
              SnacksPickerPrompt = { fg = colors.text },
              --
              --       -- Snacks core components
              --       SnacksNotifierNormal = { bg = colors.base, fg = colors.text },
              --       SnacksNotifierBorder = { bg = colors.base, fg = colors.surface2 },
              --       SnacksNotifierTitle = { bg = colors.base, fg = colors.text, bold = true },
              --       SnacksNotifierIcon = { bg = colors.base, fg = colors.blue },
              --       SnacksNotifierIconInfo = { bg = colors.base, fg = colors.blue },
              --       SnacksNotifierIconWarn = { bg = colors.base, fg = colors.yellow },
              --       SnacksNotifierIconError = { bg = colors.base, fg = colors.red },
              --
              --       -- Snacks Dashboard
              --       SnacksDashboardNormal = { bg = colors.base, fg = colors.text },
              --       SnacksDashboardDesc = { bg = colors.base, fg = colors.subtext1 },
              --       SnacksDashboardFile = { bg = colors.base, fg = colors.text },
              --       SnacksDashboardDir = { bg = colors.base, fg = colors.blue },
              --       SnacksDashboardFooter = { bg = colors.base, fg = colors.overlay1 },
              --       SnacksDashboardHeader = { bg = colors.base, fg = colors.text, bold = true },
              --       SnacksDashboardIcon = { bg = colors.base, fg = colors.blue },
              --       SnacksDashboardKey = { bg = colors.base, fg = colors.peach },
              --       SnacksDashboardTerminal = { bg = colors.base, fg = colors.text },
              --       SnacksDashboardSpecial = { bg = colors.base, fg = colors.peach },
              --
              --       -- Snacks Terminal
              --       SnacksTerminalNormal = { bg = colors.base, fg = colors.text },
              --       SnacksTerminalBorder = { bg = colors.base, fg = colors.surface2 },
              --       SnacksTerminalTitle = { bg = colors.base, fg = colors.text, bold = true },

              CmpItemMenu = { fg = colors.surface2 },
              CursorLineNr = { fg = colors.text },
              CursorLine = { bg = colors.crust },
              GitSignsChange = { fg = colors.peach },
              LineNr = { fg = colors.overlay0 },
              LspInfoBorder = { link = "FloatBorder" },
              VertSplit = { bg = colors.base, fg = colors.surface0 },
              WhichKeyFloat = { bg = colors.base },
              YankHighlight = { bg = colors.surface2 },
              FidgetTask = { fg = colors.subtext1 },
              FidgetTitle = { fg = colors.peach },

              IblIndent = { fg = colors.surface0 },
              IblScope = { fg = colors.overlay0 },

              Boolean = { fg = colors.mauve },
              Number = { fg = colors.mauve },
              Float = { fg = colors.mauve },

              PreProc = { fg = colors.mauve },
              PreCondit = { fg = colors.mauve },
              Include = { fg = colors.mauve },
              Define = { fg = colors.mauve },
              Conditional = { fg = colors.red },
              Repeat = { fg = colors.red },
              Keyword = { fg = colors.red },
              Typedef = { fg = colors.red },
              Exception = { fg = colors.red },
              Statement = { fg = colors.red },

              Error = { fg = colors.red },
              StorageClass = { fg = colors.peach },
              Tag = { fg = colors.peach },
              Label = { fg = colors.peach },
              Structure = { fg = colors.peach },
              Operator = { fg = colors.peach },
              Title = { fg = colors.peach },
              Special = { fg = colors.yellow },
              SpecialChar = { fg = colors.yellow },
              Type = { fg = colors.yellow, style = { "bold" } },
              Function = { fg = colors.green, style = { "bold" } },
              Delimiter = { fg = colors.subtext1 },
              Ignore = { fg = colors.subtext1 },
              Macro = { fg = colors.teal },

              TSAnnotation = { fg = colors.mauve },
              TSAttribute = { fg = colors.mauve },
              TSBoolean = { fg = colors.mauve },
              TSCharacter = { fg = colors.teal },
              TSCharacterSpecial = { link = "SpecialChar" },
              TSComment = { link = "Comment" },
              TSConditional = { fg = colors.red },
              TSConstBuiltin = { fg = colors.mauve },
              TSConstMacro = { fg = colors.mauve },
              TSConstant = { fg = colors.text },
              TSConstructor = { fg = colors.green },
              TSDebug = { link = "Debug" },
              TSDefine = { link = "Define" },
              TSEnvironment = { link = "Macro" },
              TSEnvironmentName = { link = "Type" },
              TSError = { link = "Error" },
              TSException = { fg = colors.red },
              TSField = { fg = colors.blue },
              TSFloat = { fg = colors.mauve },
              TSFuncBuiltin = { fg = colors.green },
              TSFuncMacro = { fg = colors.green },
              TSFunction = { fg = colors.lavender },
              TSFunctionCall = { fg = colors.lavender },
              TSInclude = { fg = colors.red },
              TSKeyword = { fg = colors.red },
              TSKeywordFunction = { fg = colors.red },
              TSKeywordOperator = { fg = colors.peach },
              TSKeywordReturn = { fg = colors.red },
              TSLabel = { fg = colors.peach },
              TSLiteral = { link = "String" },
              TSMath = { fg = colors.blue },
              TSMethod = { fg = colors.lavender },
              TSMethodCall = { fg = colors.lavender },
              TSNamespace = { fg = colors.yellow },
              TSNone = { fg = colors.text },
              TSNumber = { fg = colors.mauve },
              TSOperator = { fg = colors.peach },
              TSParameter = { fg = colors.text },
              TSParameterReference = { fg = colors.text },
              TSPreProc = { link = "PreProc" },
              TSProperty = { fg = colors.blue },
              TSPunctBracket = { fg = colors.text },
              TSPunctDelimiter = { link = "Delimiter" },
              TSPunctSpecial = { fg = colors.blue },
              TSRepeat = { fg = colors.red },
              TSStorageClass = { fg = colors.peach },
              TSStorageClassLifetime = { fg = colors.peach },
              TSStrike = { fg = colors.subtext1 },
              TSString = { fg = colors.teal },
              TSStringEscape = { fg = colors.green },
              TSStringRegex = { fg = colors.green },
              TSStringSpecial = { link = "SpecialChar" },
              TSSymbol = { fg = colors.text },
              TSTag = { fg = colors.yellow },
              TSTagAttribute = { fg = colors.green },
              TSTagDelimiter = { fg = colors.green },
              TSText = { fg = colors.green },
              TSTextReference = { link = "Constant" },
              TSTitle = { link = "Title" },
              TSTodo = { link = "Todo" },
              TSType = { fg = colors.yellow, style = { "bold" } },
              TSTypeBuiltin = { fg = colors.yellow, style = { "bold" } },
              TSTypeDefinition = { fg = colors.yellow, style = { "bold" } },
              TSTypeQualifier = { fg = colors.peach, style = { "bold" } },
              TSURI = { fg = colors.blue },
              TSVariable = { fg = colors.text },
              TSVariableBuiltin = { fg = colors.mauve },

              -- ["@annotation"] = { link = "TSAnnotation" },
              -- ["@attribute"] = { link = "TSAttribute" },
              -- ["@boolean"] = { link = "TSBoolean" },
              -- ["@character"] = { link = "TSCharacter" },
              -- ["@character.special"] = { link = "TSCharacterSpecial" },
              -- ["@comment"] = { link = "TSComment" },
              -- ["@conceal"] = { link = "Grey" },
              -- ["@conditional"] = { link = "TSConditional" },
              -- ["@constant"] = { link = "TSConstant" },
              -- ["@constant.builtin"] = { link = "TSConstBuiltin" },
              -- ["@constant.macro"] = { link = "TSConstMacro" },
              -- ["@constructor"] = { link = "TSConstructor" },
              -- ["@debug"] = { link = "TSDebug" },
              -- ["@define"] = { link = "TSDefine" },
              -- ["@error"] = { link = "TSError" },
              -- ["@exception"] = { link = "TSException" },
              -- ["@field"] = { link = "TSField" },
              -- ["@float"] = { link = "TSFloat" },
              -- ["@function"] = { link = "TSFunction" },
              -- ["@function.builtin"] = { link = "TSFuncBuiltin" },
              -- ["@function.call"] = { link = "TSFunctionCall" },
              -- ["@function.macro"] = { link = "TSFuncMacro" },
              -- ["@include"] = { link = "TSInclude" },
              -- ["@keyword"] = { link = "TSKeyword" },
              -- ["@keyword.function"] = { link = "TSKeywordFunction" },
              -- ["@keyword.operator"] = { link = "TSKeywordOperator" },
              -- ["@keyword.return"] = { link = "TSKeywordReturn" },
              -- ["@label"] = { link = "TSLabel" },
              -- ["@math"] = { link = "TSMath" },
              -- ["@method"] = { link = "TSMethod" },
              -- ["@method.call"] = { link = "TSMethodCall" },
              -- ["@namespace"] = { link = "TSNamespace" },
              -- ["@none"] = { link = "TSNone" },
              -- ["@number"] = { link = "TSNumber" },
              -- ["@operator"] = { link = "TSOperator" },
              -- ["@parameter"] = { link = "TSParameter" },
              -- ["@parameter.reference"] = { link = "TSParameterReference" },
              -- ["@preproc"] = { link = "TSPreProc" },
              -- ["@property"] = { link = "TSProperty" },
              -- ["@punctuation.bracket"] = { link = "TSPunctBracket" },
              -- ["@punctuation.delimiter"] = { link = "TSPunctDelimiter" },
              -- ["@punctuation.special"] = { link = "TSPunctSpecial" },
              -- ["@repeat"] = { link = "TSRepeat" },
              -- ["@storageclass"] = { link = "TSStorageClass" },
              -- ["@storageclass.lifetime"] = { link = "TSStorageClassLifetime" },
              -- ["@strike"] = { link = "TSStrike" },
              -- ["@string"] = { link = "TSString" },
              -- ["@string.escape"] = { link = "TSStringEscape" },
              -- ["@string.regex"] = { link = "TSStringRegex" },
              -- ["@string.special"] = { link = "TSStringSpecial" },
              -- ["@symbol"] = { link = "TSSymbol" },
              -- ["@tag"] = { link = "TSTag" },
              -- ["@tag.attribute"] = { link = "TSTagAttribute" },
              -- ["@tag.delimiter"] = { link = "TSTagDelimiter" },
              -- ["@text"] = { link = "TSText" },
              -- ["@text.danger"] = { link = "TSDanger" },
              -- ["@text.diff.add"] = { link = "diffAdded" },
              -- ["@text.diff.delete"] = { link = "diffRemoved" },
              -- ["@text.emphasis"] = { link = "TSEmphasis" },
              -- ["@text.environment"] = { link = "TSEnvironment" },
              -- ["@text.environment.name"] = { link = "TSEnvironmentName" },
              -- ["@text.literal"] = { link = "TSLiteral" },
              -- ["@text.math"] = { link = "TSMath" },
              -- ["@text.note"] = { link = "TSNote" },
              -- ["@text.reference"] = { link = "TSTextReference" },
              -- ["@text.strike"] = { link = "TSStrike" },
              -- ["@text.strong"] = { link = "TSStrong" },
              -- ["@text.title"] = { link = "TSTitle" },
              -- ["@text.todo"] = { link = "TSTodo" },
              -- ["@text.todo.checked"] = { link = "Green" },
              -- ["@text.todo.unchecked"] = { link = "Ignore" },
              -- ["@text.underline"] = { link = "TSUnderline" },
              -- ["@text.uri"] = { link = "TSURI" },
              -- ["@text.warning"] = { link = "TSWarning" },
              -- ["@todo"] = { link = "TSTodo" },
              -- ["@type"] = { link = "TSType" },
              -- ["@type.builtin"] = { link = "TSTypeBuiltin" },
              -- ["@type.definition"] = { link = "TSTypeDefinition" },
              -- ["@type.qualifier"] = { link = "TSTypeQualifier" },
              -- ["@uri"] = { link = "TSURI" },
              -- ["@variable"] = { link = "TSVariable" },
              -- ["@variable.builtin"] = { link = "TSVariableBuiltin" },
              --
              -- ["@lsp.type.class"] = { link = "TSType" },
              -- ["@lsp.type.comment"] = { link = "TSComment" },
              -- ["@lsp.type.decorator"] = { link = "TSFunction" },
              -- ["@lsp.type.enum"] = { link = "TSType" },
              -- ["@lsp.type.enumMember"] = { link = "TSProperty" },
              -- ["@lsp.type.events"] = { link = "TSLabel" },
              -- ["@lsp.type.function"] = { link = "TSFunction" },
              -- ["@lsp.type.interface"] = { link = "TSType" },
              -- ["@lsp.type.keyword"] = { link = "TSKeyword" },
              -- ["@lsp.type.macro"] = { link = "TSConstMacro" },
              -- ["@lsp.type.method"] = { link = "TSMethod" },
              -- ["@lsp.type.modifier"] = { link = "TSTypeQualifier" },
              -- ["@lsp.type.namespace"] = { link = "TSNamespace" },
              -- ["@lsp.type.number"] = { link = "TSNumber" },
              -- ["@lsp.type.operator"] = { link = "TSOperator" },
              -- ["@lsp.type.parameter"] = { link = "TSParameter" },
              -- ["@lsp.type.property"] = { link = "TSProperty" },
              -- ["@lsp.type.regexp"] = { link = "TSStringRegex" },
              -- ["@lsp.type.string"] = { link = "TSString" },
              -- ["@lsp.type.struct"] = { link = "TSType" },
              -- ["@lsp.type.type"] = { link = "TSType" },
              -- ["@lsp.type.typeParameter"] = { link = "TSTypeDefinition" },
              -- ["@lsp.type.variable"] = { link = "TSVariable" },

              RenderMarkdownCode = { bg = colors.surface0 },
              RenderMarkdownCodeBorder = { bg = colors.surface0 },
              RenderMarkdownCodeInline = { bg = colors.surface0 },
              RenderMarkdownCodeLanguage = { fg = "#2f5c81" },
              RenderMarkdownSign = { fg = colors.lavender },
            }
          end,
        },
      })
      -- vim.api.nvim_set_hl(0, "NavicIconsOperator", { default = true, bg = "none", fg = "#eedaad" })
      -- vim.api.nvim_set_hl(0, "NavicText", { default = true, bg = "none", fg = "#eedaad" })
      -- vim.api.nvim_set_hl(0, "NavicSeparator", { default = true, bg = "none", fg = "#eedaad" })

      vim.api.nvim_command("colorscheme catppuccin")

      -- vim.api.nvim_create_autocmd("FileType", {
      --   pattern = "blade",
      --   callback = function()
      --     vim.api.nvim_set_hl(0, "@string", { fg = "red" })
      --   end,
      -- })
    end,
  },
  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.sonokai_enable_italic = false
      -- vim.cmd.colorscheme("sonokai")
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    config = function()
      require("onedarkpro").setup({
        colors = {
          onedark = { bg = "#00141a" },
        },
      })
      -- vim.cmd.colorscheme("onedark")
    end,
  },
  {
    "mhartington/oceanic-next",
    priority = 1000, -- Ensure it loads first
    config = function()
      -- vim.cmd.colorscheme("OceanicNext")
    end,
  },
  {
    "uloco/bluloco.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      require("bluloco").setup({
        style = "auto", -- "auto" | "dark" | "light"
        transparent = true,
        italics = false,
        terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
        guicursor = true,
        rainbow_headings = false, -- if you want different colored headings for each heading level
      })
      -- vim.cmd.colorscheme("bluloco")
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        -- Set light or dark variant
        variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`

        -- Enable transparent background
        transparent = true,

        -- Reduce the overall saturation of colours for a more muted look
        saturation = 1, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)

        -- Enable italics comments
        italic_comments = false,

        -- Replace all fillchars with ' ' for the ultimate clean look
        hide_fillchars = false,

        -- Apply a modern borderless look to pickers like Telescope, Snacks Picker & Fzf-Lua
        borderless_pickers = false,

        -- Set terminal colors used in `:terminal`
        terminal_colors = true,

        -- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
        cache = false,

        -- Override highlight groups with your own colour values
        highlights = {
          -- Highlight groups to override, adding new groups is also possible
          -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

          -- Example:
          -- Comment = { fg = "#696969", bg = "NONE", italic = true },

          ["@tag"] = { fg = "#5eff6c", bg = "NONE", italic = false },
          Identifier = { fg = "#ff6e5e", bg = "NONE", italic = false },
          bladeDirective = { fg = "#ff0000", bg = "NONE", italic = false },

          -- More examples can be found in `lua/cyberdream/extensions/*.lua`
        },

        -- Override a highlight group entirely using the built-in colour palette
        -- overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
        --   -- Example:
        --   return {
        --     bladeDirective = { fg = colors.pink, bg = "NONE", italic = false },
        --     bladeEcho = { fg = colors.pink, bg = "NONE", italic = false },
        --     Comment = { fg = "#7B8496", bg = "NONE", italic = false },
        --     ["@property"] = { fg = colors.cyan, bold = true },
        --   }
        -- end,

        -- Override colors
        colors = {
          green = "#ffbd5e",
          orange = "#5eff6c",
          --   -- For a list of colors see `lua/cyberdream/colours.lua`
          --
          --   -- Override colors for both light and dark variants
          --   bg = "#000000",
          --   green = "#00ff00",
          --
          --   -- If you want to override colors for light or dark variants only, use the following format:
          --   dark = {
          --     magenta = "#ff00ff",
          --     fg = "#eeeeee",
          --   },
          --   light = {
          --     red = "#ff5c57",
          --     cyan = "#5ef1ff",
          --   },
        },

        -- Disable or enable colorscheme extensions
        extensions = {
          dashboard = true,
          mini = true,
          notify = true,
          snacks = true,
          telescope = true,
          treesitter = true,
          treesittercontext = true,
          trouble = true,
          whichkey = true,
        },
      })

      -- vim.api.nvim_command("colorscheme cyberdream")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = {
            wave = {},
            lotus = {},
            dragon = {},
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = "wave", -- Load "wave" theme
        background = { -- map the value of 'background' option to a theme
          dark = "dragon", -- try "dragon" !
          light = "lotus",
        },
      })

      -- setup must be called before loading
      -- vim.cmd("colorscheme kanagawa")
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("solarized-osaka").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        transparent = false, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = false },
          keywords = { italic = false },
          functions = {},
          variables = {},
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "transparent", -- style for sidebars, see below
          floats = "transparent", -- style for floating windows
        },
        sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = false, -- dims inactive windows
        lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

        --- You can override specific color groups to use other groups or a hex color
        --- function will be called with a ColorScheme table
        ---@param colors ColorScheme
        on_colors = function(colors) end,

        --- You can override specific highlights to use other groups or a hex color
        --- function will be called with a Highlights and ColorScheme table
        ---@param highlights Highlights
        ---@param colors ColorScheme
        on_highlights = function(highlights, colors) end,
      })

      -- vim.cmd("colorscheme solarized-osaka")
    end,
  },
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("material").setup({})
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "auto", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },

        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
        },

        palette = {
          -- Override the builtin palette per variant
          -- moon = {
          --     base = '#18191a',
          --     overlay = '#363738',
          -- },
        },

        -- NOTE: Highlight groups are extended (merged) by default. Disable this
        -- per group via `inherit = false`
        highlight_groups = {
          -- Comment = { fg = "foam" },
          -- StatusLine = { fg = "love", bg = "love", blend = 15 },
          -- VertSplit = { fg = "muted", bg = "muted" },
          -- Visual = { fg = "base", bg = "text", inherit = false },
        },

        before_highlight = function(group, highlight, palette)
          -- Disable all undercurls
          -- if highlight.undercurl then
          --     highlight.undercurl = false
          -- end
          --
          -- Change palette colour
          -- if highlight.fg == palette.pine then
          --     highlight.fg = palette.foam
          -- end
        end,
      })

      -- vim.cmd("colorscheme rose-pine")
      -- vim.cmd("colorscheme rose-pine-main")
      -- vim.cmd("colorscheme rose-pine-moon")
      -- vim.cmd("colorscheme rose-pine-dawn")
    end,
  },
  {
    "ricardoraposo/nightwolf.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
        terminal = true, -- Set to `false` to let terminal manage its own colors.
        overrides = {
          Normal = { bg = "None" },
          NormalFloat = { bg = "none" },
          ColorColumn = { bg = "None" },
          SignColumn = { bg = "None" },
          Folded = { bg = "None" },
          FoldColumn = { bg = "None" },
          CursorLine = { bg = "None" },
          CursorColumn = { bg = "None" },
          VertSplit = { bg = "None" },
        },
      })
    end,
  },
  {
    "ayu-theme/ayu-vim",
  },
  {
    "sainnhe/gruvbox-material",
    enabled = true,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_transparent_background = 0
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_ui_contrast = "high"
      vim.g.gruvbox_material_float_style = "bright"
      vim.g.gruvbox_material_statusline_style = "mix" -- Options: "original", "material", "mix", "afterglow"
      vim.g.gruvbox_material_cursor = "auto"

      -- vim.g.gruvbox_material_colors_override = { bg0 = '#16181A' } -- #0e1010
      -- vim.g.gruvbox_material_better_performance = 1

      -- vim.cmd.colorscheme("gruvbox-material")

      -- Custom statusline highlights
      -- vim.api.nvim_set_hl(0, "StatusLine", {
      --   bg = "#1C2021", -- Dark gray background
      --   fg = "#ebdbb2", -- Light text
      --   bold = false
      -- })
      --
      -- vim.api.nvim_set_hl(0, "StatusLineNC", {
      --   bg = "#1C2021", -- Darker background for inactive windows
      --   fg = "#928374", -- Muted text
      --   bold = false
      -- })
    end,
  },
  {
    "adibhanna/forest-night.nvim",
    priority = 1000,
    config = function()
      -- vim.cmd('colorscheme forest-night')
    end,
  },
  {
    "RRethy/base16-nvim",
    enabled = false,
    config = function()
      vim.cmd("colorscheme base16-ayu-mirage")

      -- Get the base16 colors after setting the colorscheme
      local colors = require("base16-colorscheme").colors

      -- Map base16 colors to catppuccin-like names for easier reference
      local ayu_colors = {
        -- Background colors
        base = colors.base00, -- main background
        mantle = colors.base01, -- darker background for floating windows
        surface0 = colors.base02, -- surface color
        surface1 = colors.base03, -- lighter surface
        surface2 = colors.base04, -- even lighter surface

        -- Text colors
        text = colors.base05, -- main text
        subtext1 = colors.base04, -- dimmer text
        subtext0 = colors.base03, -- even dimmer text

        -- Overlay colors
        overlay0 = colors.base03,
        overlay1 = colors.base04,
        overlay2 = colors.base06,

        -- Accent colors
        red = colors.base08, -- red accent
        peach = colors.base09, -- orange/peach accent
        yellow = colors.base0A, -- yellow accent
        green = colors.base0B, -- green accent
        teal = colors.base0C, -- teal/cyan accent
        blue = colors.base0D, -- blue accent
        mauve = colors.base0E, -- purple/mauve accent
      }

      -- Apply all the custom highlight groups
      local highlights = {
        -- Completion menu styling
        Pmenu = { bg = ayu_colors.mantle, fg = ayu_colors.text },
        PmenuSel = { bg = ayu_colors.surface0, fg = ayu_colors.text },
        PmenuSbar = { bg = ayu_colors.surface0 },
        PmenuThumb = { bg = ayu_colors.surface2 },
        PmenuExtra = { bg = ayu_colors.mantle, fg = ayu_colors.subtext1 },

        -- Floating windows
        NormalFloat = { bg = ayu_colors.mantle },
        FloatBorder = { bg = ayu_colors.mantle, fg = ayu_colors.surface2 },
        FloatTitle = { bg = ayu_colors.mantle, fg = ayu_colors.text },

        -- Blink.cmp specific highlighting
        BlinkCmpMenu = { bg = ayu_colors.mantle, fg = ayu_colors.text },
        BlinkCmpMenuBorder = { bg = ayu_colors.mantle, fg = ayu_colors.surface2 },
        BlinkCmpMenuSelection = { bg = ayu_colors.surface0, fg = ayu_colors.text },
        BlinkCmpScrollBarThumb = { bg = ayu_colors.surface2 },
        BlinkCmpScrollBarGutter = { bg = ayu_colors.surface0 },
        BlinkCmpLabel = { bg = ayu_colors.mantle, fg = ayu_colors.text },
        BlinkCmpLabelDeprecated = { bg = ayu_colors.mantle, fg = ayu_colors.overlay0, strikethrough = true },
        BlinkCmpLabelDetail = { bg = ayu_colors.mantle, fg = ayu_colors.subtext1 },
        BlinkCmpLabelDescription = { bg = ayu_colors.mantle, fg = ayu_colors.subtext1 },
        BlinkCmpKind = { bg = ayu_colors.mantle, fg = ayu_colors.peach },
        BlinkCmpSource = { bg = ayu_colors.mantle, fg = ayu_colors.overlay1 },
        BlinkCmpGhostText = { fg = ayu_colors.overlay0, italic = true },
        BlinkCmpDoc = { bg = ayu_colors.mantle, fg = ayu_colors.text },
        BlinkCmpDocBorder = { bg = ayu_colors.mantle, fg = ayu_colors.surface2 },
        BlinkCmpDocSeparator = { bg = ayu_colors.mantle, fg = ayu_colors.surface1 },
        BlinkCmpDocCursorLine = { bg = ayu_colors.surface0 },
        BlinkCmpSignatureHelp = { bg = ayu_colors.mantle, fg = ayu_colors.text },
        BlinkCmpSignatureHelpBorder = { bg = ayu_colors.mantle, fg = ayu_colors.surface2 },
        BlinkCmpSignatureHelpActiveParameter = { bg = ayu_colors.surface0, fg = ayu_colors.peach, bold = true },

        -- Snacks.nvim picker NvChad style
        SnacksPicker = { bg = ayu_colors.base },
        SnacksPickerBorder = { fg = ayu_colors.surface0, bg = ayu_colors.base },
        SnacksPickerPreview = { bg = ayu_colors.base },
        SnacksPickerPreviewBorder = { fg = ayu_colors.base, bg = ayu_colors.base },
        SnacksPickerPreviewTitle = { fg = ayu_colors.base, bg = ayu_colors.green },
        SnacksPickerBoxBorder = { fg = ayu_colors.base, bg = ayu_colors.base },
        SnacksPickerInputBorder = { fg = ayu_colors.surface2, bg = ayu_colors.base },
        SnacksPickerInputSearch = { fg = ayu_colors.text, bg = ayu_colors.base },
        SnacksPickerList = { bg = ayu_colors.base },
        SnacksPickerListBorder = { fg = ayu_colors.base, bg = ayu_colors.base },
        SnacksPickerListTitle = { fg = ayu_colors.base, bg = ayu_colors.base },

        -- Additional picker elements
        SnacksPickerDir = { fg = ayu_colors.blue },
        SnacksPickerFile = { fg = ayu_colors.text },
        SnacksPickerMatch = { fg = ayu_colors.peach, bold = true },
        SnacksPickerCursor = { bg = ayu_colors.surface0, fg = ayu_colors.text },
        SnacksPickerSelected = { bg = ayu_colors.surface0, fg = ayu_colors.text },
        SnacksPickerIcon = { fg = ayu_colors.blue },
        SnacksPickerSource = { fg = ayu_colors.overlay1 },
        SnacksPickerCount = { fg = ayu_colors.overlay1 },
        SnacksPickerFooter = { fg = ayu_colors.overlay1 },
        SnacksPickerHeader = { fg = ayu_colors.text, bold = true },
        SnacksPickerSpecial = { fg = ayu_colors.peach },
        SnacksPickerIndent = { fg = ayu_colors.surface1 },
        SnacksPickerMulti = { fg = ayu_colors.peach },
        SnacksPickerTitle = { fg = ayu_colors.text, bold = true },
        SnacksPickerPrompt = { fg = ayu_colors.text },

        -- Snacks core components
        SnacksNotifierNormal = { bg = ayu_colors.mantle, fg = ayu_colors.text },
        SnacksNotifierBorder = { bg = ayu_colors.mantle, fg = ayu_colors.surface2 },
        SnacksNotifierTitle = { bg = ayu_colors.mantle, fg = ayu_colors.text, bold = true },
        SnacksNotifierIcon = { bg = ayu_colors.mantle, fg = ayu_colors.blue },
        SnacksNotifierIconInfo = { bg = ayu_colors.mantle, fg = ayu_colors.blue },
        SnacksNotifierIconWarn = { bg = ayu_colors.mantle, fg = ayu_colors.yellow },
        SnacksNotifierIconError = { bg = ayu_colors.mantle, fg = ayu_colors.red },

        -- Snacks Dashboard
        SnacksDashboardNormal = { bg = ayu_colors.base, fg = ayu_colors.text },
        SnacksDashboardDesc = { bg = ayu_colors.base, fg = ayu_colors.subtext1 },
        SnacksDashboardFile = { bg = ayu_colors.base, fg = ayu_colors.text },
        SnacksDashboardDir = { bg = ayu_colors.base, fg = ayu_colors.blue },
        SnacksDashboardFooter = { bg = ayu_colors.base, fg = ayu_colors.overlay1 },
        SnacksDashboardHeader = { bg = ayu_colors.base, fg = ayu_colors.text, bold = true },
        SnacksDashboardIcon = { bg = ayu_colors.base, fg = ayu_colors.blue },
        SnacksDashboardKey = { bg = ayu_colors.base, fg = ayu_colors.peach },
        SnacksDashboardTerminal = { bg = ayu_colors.base, fg = ayu_colors.text },
        SnacksDashboardSpecial = { bg = ayu_colors.base, fg = ayu_colors.peach },

        -- Snacks Terminal
        SnacksTerminalNormal = { bg = ayu_colors.mantle, fg = ayu_colors.text },
        SnacksTerminalBorder = { bg = ayu_colors.mantle, fg = ayu_colors.surface2 },
        SnacksTerminalTitle = { bg = ayu_colors.mantle, fg = ayu_colors.text, bold = true },

        -- Other UI elements
        CmpItemMenu = { fg = ayu_colors.surface2 },
        CursorLineNr = { fg = ayu_colors.text },
        GitSignsChange = { fg = ayu_colors.peach },
        LineNr = { fg = ayu_colors.overlay0 },
        LspInfoBorder = { link = "FloatBorder" },
        VertSplit = { bg = ayu_colors.base, fg = ayu_colors.surface0 },
        WhichKeyFloat = { bg = ayu_colors.mantle },
        YankHighlight = { bg = ayu_colors.surface2 },
        FidgetTask = { fg = ayu_colors.subtext1 },
        FidgetTitle = { fg = ayu_colors.peach },

        -- Indent guides
        IblIndent = { fg = ayu_colors.surface0 },
        IblScope = { fg = ayu_colors.overlay0 },

        -- Syntax highlighting
        Boolean = { fg = ayu_colors.mauve },
        Number = { fg = ayu_colors.mauve },
        Float = { fg = ayu_colors.mauve },

        PreProc = { fg = ayu_colors.mauve },
        PreCondit = { fg = ayu_colors.mauve },
        Include = { fg = ayu_colors.mauve },
        Define = { fg = ayu_colors.mauve },
        Conditional = { fg = ayu_colors.red },
        Repeat = { fg = ayu_colors.red },
        Keyword = { fg = ayu_colors.red },
        Typedef = { fg = ayu_colors.red },
        Exception = { fg = ayu_colors.red },
        Statement = { fg = ayu_colors.red },

        Error = { fg = ayu_colors.red },
        StorageClass = { fg = ayu_colors.peach },
        Tag = { fg = ayu_colors.peach },
        Label = { fg = ayu_colors.peach },
        Structure = { fg = ayu_colors.peach },
        Operator = { fg = ayu_colors.peach },
        Title = { fg = ayu_colors.peach },
        Special = { fg = ayu_colors.yellow },
        SpecialChar = { fg = ayu_colors.yellow },
        Type = { fg = ayu_colors.yellow, bold = true },
        Function = { fg = ayu_colors.green, bold = true },
        Delimiter = { fg = ayu_colors.subtext1 },
        Ignore = { fg = ayu_colors.subtext1 },
        Macro = { fg = ayu_colors.teal },

        -- Treesitter highlights
        TSAnnotation = { fg = ayu_colors.mauve },
        TSAttribute = { fg = ayu_colors.mauve },
        TSBoolean = { fg = ayu_colors.mauve },
        TSCharacter = { fg = ayu_colors.teal },
        TSCharacterSpecial = { link = "SpecialChar" },
        TSComment = { link = "Comment" },
        TSConditional = { fg = ayu_colors.red },
        TSConstBuiltin = { fg = ayu_colors.mauve },
        TSConstMacro = { fg = ayu_colors.mauve },
        TSConstant = { fg = ayu_colors.text },
        TSConstructor = { fg = ayu_colors.green },
        TSDebug = { link = "Debug" },
        TSDefine = { link = "Define" },
        TSEnvironment = { link = "Macro" },
        TSEnvironmentName = { link = "Type" },
        TSError = { link = "Error" },
        TSException = { fg = ayu_colors.red },
        TSField = { fg = ayu_colors.blue },
        TSFloat = { fg = ayu_colors.mauve },
        TSFuncBuiltin = { fg = ayu_colors.green },
        TSFuncMacro = { fg = ayu_colors.green },
        TSFunction = { fg = ayu_colors.green },
        TSFunctionCall = { fg = ayu_colors.green },
        TSInclude = { fg = ayu_colors.red },
        TSKeyword = { fg = ayu_colors.red },
        TSKeywordFunction = { fg = ayu_colors.red },
        TSKeywordOperator = { fg = ayu_colors.peach },
        TSKeywordReturn = { fg = ayu_colors.red },
        TSLabel = { fg = ayu_colors.peach },
        TSLiteral = { link = "String" },
        TSMath = { fg = ayu_colors.blue },
        TSMethod = { fg = ayu_colors.green },
        TSMethodCall = { fg = ayu_colors.green },
        TSNamespace = { fg = ayu_colors.yellow },
        TSNone = { fg = ayu_colors.text },
        TSNumber = { fg = ayu_colors.mauve },
        TSOperator = { fg = ayu_colors.peach },
        TSParameter = { fg = ayu_colors.text },
        TSParameterReference = { fg = ayu_colors.text },
        TSPreProc = { link = "PreProc" },
        TSProperty = { fg = ayu_colors.blue },
        TSPunctBracket = { fg = ayu_colors.text },
        TSPunctDelimiter = { link = "Delimiter" },
        TSPunctSpecial = { fg = ayu_colors.blue },
        TSRepeat = { fg = ayu_colors.red },
        TSStorageClass = { fg = ayu_colors.peach },
        TSStorageClassLifetime = { fg = ayu_colors.peach },
        TSStrike = { fg = ayu_colors.subtext1 },
        TSString = { fg = ayu_colors.teal },
        TSStringEscape = { fg = ayu_colors.green },
        TSStringRegex = { fg = ayu_colors.green },
        TSStringSpecial = { link = "SpecialChar" },
        TSSymbol = { fg = ayu_colors.text },
        TSTag = { fg = ayu_colors.peach },
        TSTagAttribute = { fg = ayu_colors.green },
        TSTagDelimiter = { fg = ayu_colors.green },
        TSText = { fg = ayu_colors.green },
        TSTextReference = { link = "Constant" },
        TSTitle = { link = "Title" },
        TSTodo = { link = "Todo" },
        TSType = { fg = ayu_colors.yellow, bold = true },
        TSTypeBuiltin = { fg = ayu_colors.yellow, bold = true },
        TSTypeDefinition = { fg = ayu_colors.yellow, bold = true },
        TSTypeQualifier = { fg = ayu_colors.peach, bold = true },
        TSURI = { fg = ayu_colors.blue },
        TSVariable = { fg = ayu_colors.text },
        TSVariableBuiltin = { fg = ayu_colors.mauve },
      }

      -- Apply all highlights
      for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
      end
    end,
  },
}

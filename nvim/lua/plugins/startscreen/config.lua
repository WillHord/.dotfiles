local username = "Will"
local new_header_image = {
  -- [[                                                                       ]],
  -- [[                                                                       ]],
  -- [[                                                                       ]],
  -- [[                                                                       ]],
  -- [[                                                                       ]],
  -- [[                                                                       ]],
  [[                                                                       ]],
  [[                                                                     ]],
  [[       ████ ██████           █████      ██                     ]],
  [[      ███████████             █████                             ]],
  [[      █████████ ███████████████████ ███   ███████████   ]],
  [[     █████████  ███    █████████████ █████ ██████████████   ]],
  [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
  [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
  [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
  [[                                                                       ]],
  [[                                                                       ]],
  [[                                                                       ]],
}

local header_image = {
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣤⣤⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⠿⠿⠿⠿⢿⣿⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣶⣾⣿⣿⠀⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⠀⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣾⣿⡿⠟⠛⠉⠉⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠉⠉⠛⠻⢿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⡿⠋⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⠀⠀⠀⠙⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠃⠀⠀⣠⣶⣾⣿⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⣿⣷⣦⣄⠀⠀⠸⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⢀⣾⣿⡿⠛⠉⠀⣿⣿⡇⠀⠀⣀⣀⠀⠀⠀⠀⠀⣀⣀⠀⠀⢸⣿⣿⠀⠉⠛⢿⣿⣷⡀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣆⢸⣿⣿⠀⠀⠀⠀⣿⣿⡇⠀⢾⣿⣿⡇⠀⠀⠀⢾⣿⣿⡇⠀⢸⣿⣿⠀⠀⠀⠈⣿⣿⡇⣼⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣄⠀⠀⠀⣿⣿⡇⠀⠈⠙⠋⠀⠀⠀⠀⠈⠙⠋⠀⠀⢸⣿⣿⠀⠀⠀⣰⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣿⣿⣿⣷⣶⣶⣿⣿⣿⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣶⣶⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠛⠛⠛⠛⠛⠛⠛⢻⣿⣿⠛⣿⣿⣿⢻⣿⣿⠛⠛⠛⠛⠛⠛⠛⠛⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⠀⢸⣿⣿⠀⣿⣿⣿⢸⣿⣿⠀⠀⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣈⣉⣉⣉⣉⡉⢹⣿⣿⠀⢸⣿⣿⠀⣿⣿⣿⢸⣿⣿⠀⠀⣿⣿⡏⢉⣉⣉⣉⣉⣁⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⡇⢸⣿⣿⠀⢸⣿⣿⠀⣿⣿⣿⢸⣿⣿⠀⠀⣿⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⢸⣿⣿⠀⢸⣿⣿⠀⣿⣿⣿⢸⣿⣿⠀⠀⣿⣿⡇⢸⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⢸⣿⣿⠀⢸⣿⣿⠀⣿⣿⣿⢸⣿⣿⠀⠀⣿⣿⡇⢸⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⢸⣿⣿⣄⣼⣿⣿⠀⣿⣿⣿⠸⣿⣿⣆⣠⣿⣿⡇⢸⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣄⠻⢿⣿⣿⠿⢋⣴⣿⣿⣿⣦⡙⠿⣿⣿⡿⠛⣠⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣷⣶⣤⣴⣶⣿⣿⠿⠙⢿⣿⣿⣶⣦⣴⣶⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠿⠿⠛⠋⠁⠀⠀⠀⠈⠙⠛⠿⠿⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
}

local function centerText(str, desiredLength)
  local strLength = string.len(str)

  if strLength >= desiredLength then
    -- If the string is already longer than the desired length, return it as is
    return str
  else
    -- Calculate the number of spaces to add on each side
    local paddingLength = (desiredLength - strLength) / 2
    local leftPadding = string.rep(" ", math.floor(paddingLength))
    local rightPadding = string.rep(" ", math.ceil(paddingLength))

    -- Concatenate the left padding, string, and right padding
    return leftPadding .. str .. rightPadding
  end
end

local render_sub_header = function()
  -- Get the local time and date then print "Good Morning Will it is {time} on {date}"
  local time = os.date("%H:%M")
  local date = os.date("%A %B %d")
  local morning = "☕ Good Morning"
  local afternoon = "☀️  Good Afternoon"
  local evening = "🌑 Good Evening"

  local time_of_day
  -- Check time, if after 6am but before noon then morning, between noon and 6 is afternoon and everything else is evening
  if tonumber(os.date("%H")) >= 6 and tonumber(os.date("%H")) < 12 then
    time_of_day = morning
  elseif tonumber(os.date("%H")) >= 12 and tonumber(os.date("%H")) < 18 then
    time_of_day = afternoon
  else
    time_of_day = evening
  end


  local sub_header = time_of_day .. " " .. username .. " it is " .. time .. " on " .. date
  return sub_header
end

local config = function()
  local alpha = require "alpha"
  local dashboard = require "alpha.themes.dashboard"
  -- Header Imageheader_image
  local sub_header = centerText(render_sub_header(), string.len(header_image[1]))
  -- table.insert(header_image, sub_header)
  dashboard.section.header.val = header_image

  _Gopts = {
    position = "center",
    hl = "Type",
    -- wrap = "overflow";
  }

  vim.o.guifont = "Source Code Pro:h12:#h-slight"
  -- Set menu
  dashboard.section.buttons.val = {
    -- dashboard.button("SPC j", "󰈚   Restore Session", ":SessionRestore<cr>"),
    dashboard.button("e", "   New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", "   Find file", ":Telescope find_files<CR>"),
    dashboard.button("g", "󰱼   Find word", ":Telescope live_grep<CR>"),
    dashboard.button("r", "   Recent", ":Telescope oldfiles<CR>"),
    dashboard.button("s", "   Sessions", ":Telescope possession list<CR>"),
    -- dashboard.button("c", "   Config", ":e $MYVIMRC <CR>"),
    dashboard.button("m", "󱌣   Mason", ":Mason<CR>"),
    dashboard.button("l", "󰒲   Lazy", ":Lazy<CR>"),
    dashboard.button("u", "󰂖   Update plugins", "<cmd>lua require('lazy').sync()<CR>"),
    dashboard.button("q", "   Quit NVIM", ":qa<CR>"),
  }

  local function footer()
    return "Will Hord"
  end
  dashboard.section.footer.val = footer()

  dashboard.opts.opts.noautocmd = true
  alpha.setup(dashboard.opts)

  require("alpha").setup(dashboard.opts)
end

return config

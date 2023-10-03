local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {

  },

  v = {

  },

  i = {

  }
}

-- Your custom mappings
M.abc = {
  n = {

  },

  v = {

  },
  
  i = {
    ["jj"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  }
}

return M

return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",

        -- 1. Make Enter (<CR>) cancel the suggestion list and insert a newline
        ["<CR>"] = { "cancel", "fallback" },

        -- 2. Make Tab select and accept the suggestion
        ["<Tab>"] = { "select_and_accept", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
      },
    },
  },
}

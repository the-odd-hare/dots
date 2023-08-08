require("zeka.remap")
require("zeka.packer")
require("zeka.set")

vim.api.nvim_create_autocmd({"BufLeave", "BufWinLeave"}, {
  pattern = {"*.*"},
  command = "mkview",
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.*"},
  command = "loadview",
})

require("code_runner").setup({
  filetype={
    python = "python3 -u",
    c = "cd $dir && gcc $fileName && ./a.out"
  },
})

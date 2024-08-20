require("Lazy")
require("CMP")



-- The custom header
local custom_header = {
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  '  O~~~     O~~O~~         O~~                ',
  '  O~ O~~   O~~ O~~       O~~  O~             ',
  '  O~~ O~~  O~~  O~~     O~~     O~~~ O~~ O~~ ',
  '  O~~  O~~ O~~   O~~   O~~   O~~ O~~  O~  O~~',
  '  O~~   O~ O~~    O~~ O~~    O~~ O~~  O~  O~~',
  "  O~~    O~ ~~     O~~~~     O~~ O~~  O~  O~~",
  "  O~~      O~~      O~~      O~~O~~~  O~  O~~",
    "",
    "",
    "",
    "",
    "",
}

vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])

-- Now `custom_header` contains the centered lines
vim.g.startify_custom_header = custom_header

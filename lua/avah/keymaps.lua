local function map(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.noremap = true ~= false

	vim.keymap.set(mode, lhs, rhs, opts)
end

map("n", "<leader>w", "<cmd>w<cr>")
map("n", "<leader>q", "<cmd>q<cr>")
map("i", "jk", "<esc>")

map("n", "<leader><tab>", function()
	if vim.bo.filetype ~= "oil" then
		require("oil").open()
	else
		require("oil").close()
	end
end)

map("n", "<leader>p", "<cmd>Telescope find_files<cr>")
map("n", "<leader>x", "<cmd>Telescope live_grep<cr>")

map("x", "<leader>y", [["+y]])
map(
	"x",
	"n",
	[[:<c-u>let temp_variable=@"<CR>gvy:<c-u>let @/='\V<C-R>=escape(@",'/\')<CR>'<CR>:let @"=temp_variable<CR>]],
	{ silent = true }
)

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "<leader>t", "<Cmd>sp<CR> <Cmd>term<CR> <Cmd>resize 20N<CR> i")
map("t", "<C-c><C-c>", "<C-\\><C-n>")

map("n", "<leader>rp", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
map("n", "<leader><C-o>", "<Cmd>!open %<CR><CR>")
map("n", "J", "mzJ`z")
map("x", "J", "mzJ`z")

map("n", "<c-h>", "<c-w><c-h>")
map("n", "<c-j>", "<c-w><c-j>")
map("n", "<c-k>", "<c-w><c-k>")
map("n", "<c-l>", "<c-w><c-l>")

map("n", "<esc>", "<cmd>nohlsearch<cr>")

map("n", "<leader>cb", "<cmd>Run build<cr>")
map("n", "<leader>cr", "<cmd>Run build<cr><cmd>Run run<cr>")
map("n", "<leader>cl", "<cmd>Run run<cr>")
map("n", "<leader>cc", "<cmd>Run clean<cr>")

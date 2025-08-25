-- Fuzzy Finder (files, lsp, etc)
return {
	"nvim-telescope/telescope.nvim",
	branch = "master",
	dependencies = {
		"nvim-lua/plenary.nvim",

		-- Fuzzy Finder Algorithm (requires local `make`)
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},

		"nvim-telescope/telescope-ui-select.nvim",
		"nvim-tree/nvim-web-devicons", -- Icons (requires Nerd Font)
	},

	opts = {
		defaults = {
			mappings = {
				i = {
					["<C-k>"] = require("telescope.actions").move_selection_previous,
					["<C-j>"] = require("telescope.actions").move_selection_next,
					["<C-l>"] = require("telescope.actions").select_default,
				},
				n = {
					["q"] = require("telescope.actions").close,
				},
			},
			path_display = {
				filename_first = {
					reverse_directories = true,
				},
			},
		},

		pickers = {
			find_files = {
				hidden = true,
				file_ignore_patterns = { "node_modules", ".git", ".venv" },
			},

			buffers = {
				initial_mode = "normal",
				sort_lastused = true,
				mappings = {
					n = {
						["d"] = require("telescope.actions").delete_buffer,
						["l"] = require("telescope.actions").select_default,
					},
				},
			},

			git_files = {
				previewer = false,
			},
		},

		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_dropdown(),
			},
		},
	},

	config = function(_, opts)
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.setup(opts)

		-- Load extensions if available
		pcall(telescope.load_extension, "fzf")
		pcall(telescope.load_extension, "ui-select")

		-- Keymaps
		local map = vim.keymap.set
		map("n", "<leader>?", builtin.oldfiles, { desc = "[?] Find recently opened files" })
		map("n", "<leader>sb", builtin.buffers, { desc = "[S]earch existing [B]uffers" })
		map("n", "<leader>sm", builtin.marks, { desc = "[S]earch [M]arks" })
		map("n", "<leader>gf", builtin.git_files, { desc = "Search [G]it [F]iles" })
		map("n", "<leader>gc", builtin.git_commits, { desc = "Search [G]it [C]ommits" })
		map("n", "<leader>gcf", builtin.git_bcommits, { desc = "Search [G]it [C]ommits for current [F]ile" })
		map("n", "<leader>gb", builtin.git_branches, { desc = "Search [G]it [B]ranches" })
		map("n", "<leader>gs", builtin.git_status, { desc = "Search [G]it [S]tatus (diff view)" })
		map("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
		map("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
		map("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
		map("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
		map("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
		map("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
		map("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
		map("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

		-- LSP document symbols (filtered)
		map("n", "<leader>sds", function()
			builtin.lsp_document_symbols({
				symbols = { "Class", "Function", "Method", "Constructor", "Interface", "Module", "Property" },
			})
		end, { desc = "[S]earch LSP Document [S]ymbols" })

		-- Grep in open files
		map("n", "<leader>s/", function()
			builtin.live_grep({
				grep_open_files = true,
				prompt_title = "Live Grep in Open Files",
			})
		end, { desc = "[S]earch [/] in Open Files" })

		-- Fuzzy search in current buffer
		map("n", "<leader>/", function()
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				previewer = false,
			}))
		end, { desc = "[/] Fuzzily search in current buffer" })
	end,
}

require("starship"):setup()
local tokyo_night_theme = require("yatline-tokyo-night"):setup("night") -- or moon/storm/day
local catppuccin_theme = require("yatline-catppuccin"):setup("mocha") -- or "latte" | "frappe" | "macchiato"

require("yatline"):setup ({
 theme = tokyo_night_theme,
	-- theme = catppuccin_theme,
	show_background = true,

	header_line = {
		left = {
			section_a = {
				{ type = "line", custom = false, name = "tabs", params = { "left" } },
			},
			section_b = {},
			section_c = {},
		},
		right = {
			section_a = {
				{ type = "coloreds", custom = true, name = { { " 󰇥 ", "#3c3836" } } },
			},
			section_b = {},
			section_c = {
				{ type = "coloreds", custom = false, name = "count" },
			},
		},
	},

	status_line = {
		left = {
			section_a = {},
			section_b = {},
			section_c = {},
		},
		right = {
			section_a = {},
			section_b = {},
			section_c = {},
		},
	},
})

require("bunny"):setup({
	hops = {
		{ key = "/", path = "/" },

    { key = "2", path = "~/1_file/2_git_repos/", desc = "2_git_repos" },
    { key = "3", path = "~/1_file/3_Repos_All/", desc = "3_Repos_All" },
    { key = "4", path = "~/1_file/4_AppsData/", desc = "4_AppsData" },
    { key = "6", path = "~/1_file/6_WindowsBackup/", desc = "6_WindowsBackup" },
    { key = "7", path = "~/1_file/7_Zip/", desc = "7_Zip" },
    { key = "8", path = "~/1_file/8_MOUNTINGS/", desc = "8_MOUNTINGS" },
    { key = "9", path = "~/1_file/9_Pictures/", desc = "9_Pictures" },

    { key = "c", path = "~/.config", desc = "Config" },
    { key = "d", path = "~/1_file/5_ZenDownloads/", desc = "5_ZenDownloads" },
    { key = "g", path = "~/1_file/3_Repos_All/A_gitHub/", desc = "A_gitHub" },
    { key = "K", path = "~/1_file/3_Repos_All/A_gitHub/1_OracleCludeInfrastracture-DevOps_Professional/A_Study/2_Kind/", desc = "Kuberneties[Kind]" },


    { key = "h", path = "~", desc = "Home" },
    { key = "m", path = "~/1_file/8_MOUNTINGS/SD_512/MK-X/SONGS/", desc = "HI-RES-MUSIC" },

    { key = "n", path = "/etc/nixos/", desc = "NIX_OS_CONFIG" },
    { key = "N", path = "/nix/store", desc = "Nix store" },


    -- { key = "C", path = "~/1_file/2_git_repos/", desc = "Local Config-2_git_repos" },
    -- { key = "t", path = "/tmp" },
		-- { key = "d", path = "~/1_file/5_ZenDownloads/", desc = "5_ZenDownloads" },
		-- { key = "d", path = "~/1_file/5_ZenDownloads/", desc = "5_ZenDownloads" },
		-- { key = "d", path = "~/1_file/5_ZenDownloads/", desc = "5_ZenDownloads" },
		-- { key = "d", path = "~/1_file/5_ZenDownloads/", desc = "5_ZenDownloads" },
		-- { key = { "l", "s" }, path = "~/.local/share", desc = "Local share" },
		-- { key = { "l", "b" }, path = "~/.local/bin", desc = "Local bin" },
		-- { key = { "l", "t" }, path = "~/.local/state", desc = "Local state" },
		-- key and path attributes are required, desc is optional
	},
	desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
	ephemeral = true, -- Enable ephemeral hops, default is true
	tabs = true, -- Enable tab hops, default is true
	notify = false, -- Notify after hopping, default is false
	fuzzy_cmd = "fzf", -- Fuzzy searching command, default is "fzf"
})

require("gvfs"):setup({
	-- (Optional) Allowed keys to select device.
	which_keys = "1234567890qwertyuiopasdfghjklzxcvbnm-=[]\\;',./!@#$%^&*()_+{}|:\"<>?",

	-- (Optional) Save file.
	-- Default: ~/.config/yazi/gvfs.private
	save_path = os.getenv("HOME") .. "/.config/yazi/gvfs.private",

	-- (Optional) input position. Default: { "top-center", y = 3, w = 60 },
	-- Position, which is a table:
	-- 	`1`: Origin position, available values: "top-left", "top-center", "top-right",
	-- 	     "bottom-left", "bottom-center", "bottom-right", "center", and "hovered".
	--         "hovered" is the position of hovered file/folder
	-- 	`x`: X offset from the origin position.
	-- 	`y`: Y offset from the origin position.
	-- 	`w`: Width of the input.
	-- 	`h`: Height of the input.
	input_position = { "center", y = 0, w = 60 },

	-- (Optional) Select where to save passwords. Default: nil
	-- Available options: "keyring", "pass", or nil
	password_vault = "keyring",

	-- (Optional) Only need if you set password_vault = "pass"
	-- Read the guide at SECURE_SAVED_PASSWORD.md to get your key_grip
	key_grip = "BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB",

	-- (Optional) save password automatically after mounting. Default: false
	save_password_autoconfirm = true,
})

require("simple-tag"):setup({
	-- UI display mode (icon, text, hidden)
	ui_mode = "icon", -- (Optional)

	-- Disable tag key hints (popup in bottom right corner)
	hints_disabled = false, -- (Optional)

	-- linemode order: adjusts icon/text position. Fo example, if you want icon to be on the mose left of linemode then set linemode_order larger than 1000.
	-- More info: https://github.com/sxyazi/yazi/blob/077faacc9a84bb5a06c5a8185a71405b0cb3dc8a/yazi-plugin/preset/components/linemode.lua#L4-L5
	linemode_order = 500, -- (Optional)

	-- You can backup/restore this folder. But don't use backed up folder in the different OS.
	-- save_path =  -- full path to save tags folder (Optional)
	--       - Linux/MacOS: os.getenv("HOME") .. "/.config/yazi/tags"
	--       - Windows: os.getenv("APPDATA") .. "\\yazi\\config\\tags"

	-- Set tag colors
	colors = { -- (Optional)
		-- Set this same value with `theme.toml` > [mgr] > hovered > reversed
		-- Default theme use "reversed = true".
		-- More info: https://github.com/sxyazi/yazi/blob/077faacc9a84bb5a06c5a8185a71405b0cb3dc8a/yazi-config/preset/theme-dark.toml#L25
		reversed = true, -- (Optional)

		-- More colors: https://yazi-rs.github.io/docs/configuration/theme#types.color
		-- format: [tag key] = "color"
		["*"] = "#bf68d9", -- (Optional)
		["$"] = "green",
		["!"] = "#cc9057",
		["1"] = "cyan",
		["p"] = "red",
	},

	-- Set tag icons. Only show when ui_mode = "icon".
	-- Any text or nerdfont icons should work
	-- Default icon from mactag.yazi: ●; , , 󱈤
	-- More icon from nerd fonts: https://www.nerdfonts.com/cheat-sheet
	icons = { -- (Optional)
		-- default icon
		default = "󰚋",

		-- format: [tag key] = "tag icon"
		["*"] = "*",
		["$"] = "",
		["!"] = "",
		["p"] = "",
	},
})

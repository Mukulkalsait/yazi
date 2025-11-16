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


    { key = "2", path = "~/A_Files/2_git_repos/", desc = "2_git_repos" },
    { key = "3", path = "~/A_Files/3_Repos_All/", desc = "3_Repos_All" },
    { key = "4", path = "~/A_Files/4_AppsData/", desc = "4_AppsData" },
    { key = "6", path = "~/A_Files/6_WindowsBackup/", desc = "6_WindowsBackup" },
    { key = "7", path = "~/A_Files/7_Zip/", desc = "7_Zip" },
    { key = "8", path = "~/A_Files/8_MOUNTINGS/", desc = "8_MOUNTINGS" },
    { key = "9", path = "~/A_Files/9_Pictures/", desc = "9_Pictures" },


    { key = "c", path = "~/.config", desc = "Config" },
    { key = "d", path = "~/A_Files/5_ZenDownloads/", desc = "5_ZenDownloads" },
    { key = "g", path = "~/A_Files/3_Repos_All/A_gitHub/", desc = "A_gitHub" },
    { key = "K", path = "~/A_Files/3_Repos_All/A_gitHub/1_OracleCludeInfrastracture-DevOps_Professional/A_Study/2_Kind/", desc = "Kuberneties[Kind]" },




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

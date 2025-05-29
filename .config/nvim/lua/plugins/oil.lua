return {
	"stevearc/oil.nvim",
    opts={},
	keys = function()
		local oil = require("oil")
		return {
			{
				"_",
				function()
					oil.toggle_float()
				end,
			},
		}
	end,
}

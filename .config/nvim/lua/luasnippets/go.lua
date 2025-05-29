local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("go", {
	s(
		"struct",
		fmt(
			[[
        type {} struct {{
            {}
        }}
    ]],
			{
				i(1, "StructName"),
				i(2, "// fields go here"),
			}
		)
	),
})

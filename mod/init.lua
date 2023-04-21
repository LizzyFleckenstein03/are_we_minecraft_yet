minetest.after(3, function()
	local set = {}
	local list = {}

	for name, def in pairs(minetest.registered_items) do
		if def.description and not def.groups.not_in_creative_inventory then
			local t = minetest.strip_colors(minetest.get_translated_string("", def.description))
			local idx = t:find("\n")
			if idx then
				t = t:sub(1, idx-1)
			end

			if t ~= "" and not set[t] then
				set[t] = true
				table.insert(list, t)
			end
		end
	end

	table.sort(list)

	local f = io.open(minetest.get_worldpath() .. "/items.txt", "w")
	f:write(table.concat(list, "\n") .. "\n")
	f:close()

	minetest.request_shutdown()
end)

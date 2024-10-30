ColorPrint = {}

local obiectFoos = {
	color = function(obiect, input)
		return string.char(27) .. "[38;5;" .. obiect.color .. "m" .. input .. string.char(27) .. "[m"
	end,
	bgColor = function(obiect, input)
		return string.char(27) .. "[48;5;" .. obiect.bgColor .. "m" .. input .. string.char(27) .. "[m"
	end
}

function ColorPrint.getColoredText(input, colorSheme)
	for key in pairs(colorSheme) do
		input = obiectFoos[key](colorSheme, input)
	end
	return input
end

return ColorPrint

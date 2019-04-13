-- $Name:Звезды знают всё, но молчат$
-- $Version: 0.2$
-- $Author: Dwarf Vader$
-- $Info: Игра написанная за два с половиной часа специально для Спринт ИЛ$
require "parser/mp-ru"
require "fmt"

obj {
	-"раковина надежды/но";
	nam = "o1";
}
obj {
	-"чистая раковина,рак*";
	nam = "o2";
}

obj {
	-"зеленая раковина,рак*";
	nam = "o3";
}

obj {
	-"дома старосты";
	nam = "o4";
}

obj {
	-"дома старост";
	nam = "o5";
}

obj {
	-"бегущая по волнам";
	nam = "o6";
}

obj {
	-"блестящий шлем";
	nam = "o7";
}

obj {
	-"блестящие шлемы";
	nam = "o8";
}

obj {
	-"посох разрушения";
	nam = "o9";
}

obj {
	-"ведро";
	nam = "o10";
}

obj {
	-"участковый пункт полиции";
	nam = "o11";
}

obj {
	-"деревья";
	nam = "o12";
}

function init()
	for i = 1, 12 do
		local o =  _("o"..tostring(i))
		for k, v in ipairs({"вн", "рд", "дт", "тв", "пр", "им"}) do
			print("["..o.word.."]")
			print(v, ":", o:noun(v))
			print(v, "(мн):", o:noun(v..",мн"))
		end
	end
	os.exit(1)
end

local PC = require("Classes/PC")

function onStart()
	pc = PC:new()
end

function onPathAction()
	if not pc:isReady() then
		return pc:use()
	elseif not pc:hasDatas() then
		return pc:gatherDatas()
	end
	log(pc:toString())
	fatal("THE END")
end
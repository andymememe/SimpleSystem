# Status
PARSING = 0
FOUND = 1

def cmd_parser (rawCmd, sysdata)
	load './data/app_list.rb'
	
	#Declare
	parseStatus = PARSING

	# Split
	cmdStructure = rawCmd.split(' ')
	cmd = cmdStructure[0]
	if cmdStructure.length > 1
		para = cmdStructure[1, cmdStructure.length - 1]
	end
	
	# Search app
	@app_list.each_pair do |c, p|
		if c == cmd
			parseStatus = FOUND
			load './bin/' + p
			StartApp para
			break
		end
	end
	
	# Search system app 
	if parseStatus == PARSING 
		@sysapp_list.each_pair do |c, p|
			if c == cmd
				parseStatus = FOUND
				load './bin/sysapp/' + p
				StartApp(para, sysdata)
				break
			end
		end
	end
	
	# If not found
	if parseStatus == PARSING
		puts "[Error]Command #{cmd} not found"
		puts ''
	end
end

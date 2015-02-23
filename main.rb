require './parser.rb'
require './data/system_data.rb'

# State
CLOSE = -1
WORKING = 1

# Declare
cmd = ''
status = WORKING
commandTag = ''

# Main
system "clear"

# Login
print 'Simple System Login : '
sysdata = Sysdata.new(gets.chomp)

system "clear"

# Commander
while status != CLOSE
	# Print username
	print "#{sysdata.getName}@ruby >> "
	
	# Get cmd
	cmd = gets.chomp
	
	#Parsing
	if cmd == 'exit'
		status = CLOSE
	else
		cmd_parser(cmd, sysdata)
	end
end

system "clear"

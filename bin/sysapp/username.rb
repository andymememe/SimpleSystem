def StartApp (para, sysdata)
	if para == nil
		puts sysdata.getName
	elsif para[0] == 'change'
		if para[1] == nil
			puts '[Username Error] Usage : username change new_name'
		else
			sysdata.setName para[1]
			puts 'Change username to ' + sysdata.getName
		end
	elsif para[0] == 'help'
		puts '***************'
		puts '*Username Help*'
		puts '***************'
		puts '[Show Username] : username'
		puts '[Change Username] : username change new_name'
		puts '[Help] : username help'
	else
		puts "[Username Error] Wrong parameter(s)"
		puts 'Wanna some help? type "username help"'
	end
	puts ''
end

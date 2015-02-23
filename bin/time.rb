def StartApp (para)
	if para == nil
		puts Time.now
	elsif para[0] == 'gmt'
		puts Time.now.gmtime
	elsif para[0] == 'year'
		puts Time.now.year
	elsif para[0] == 'month'
		puts Time.now.month
	elsif para[0] == 'day'
		puts Time.now.day
	elsif para[0] == 'hour'
		puts Time.now.hour
	elsif para[0] == 'min'
		puts Time.now.min
	elsif para[0] == 'sec'
		puts Time.now.sec
	elsif para[0] == 'help'
		puts '***********'
		puts '*Time Help*'
		puts '***********'
		puts '[Local Time] : time'
		puts '[GMT Time] : time gmt'
		puts '[Now Year] : time year'
		puts '[Now Month] : time month'
		puts '[Now Day] : time day'
		puts '[Now Hour] : time hour'
		puts '[Now Minute] : time min'
		puts '[Now Second] : time sec'
		puts '[Help] : time help'
	else
		puts "[Time Error] Wrong parameter(s)"
		puts 'Wanna some help? type "time help"'
	end
	puts ''
end

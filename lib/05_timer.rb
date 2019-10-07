def time_string(sec)
	#pour aller plus vite : Time.at(duration).utc.strftime("%H:%M:%S") avec strftime pour mettre en format que l'on veut
	min = sec / 60
	hr = min /60
	min = min - 60*hr
	sec = sec - 60*min -60*60*hr
	return "#{hr.to_s.rjust(2,"0")}:#{min.to_s.rjust(2,"0")}:#{sec.to_s.rjust(2,"0")}"
end


get '/' do
  @abuelita = params[:abuelita]
  
  erb :index
  # Visita app/views/index.erb
end

post '/abue' do
	user_input = params[:user_input]
	grito = mayus?(user_input)
	puts grito
	if user_input == ""
		"No te quedes ah&iacute; parado"
	elsif grito == true
		"NO, NO DESDE 1983"
	elsif user_input == "abuelita te quiero, pero tengo que irme"
		"BYE"
	else
		"HUH?! NO TE ESCUCHO, HIJO!"
	end
end

def mayus?(palabra)
	bandera = false
	for i in 0...palabra.length
		if palabra [i] == "" || palabra[i] != palabra[i].upcase
			return bandera
		else
			bandera = true
		end
	end
	return bandera
end
get '/' do
  @abuelita = params[:abuelita]
  
  erb :index
  # Visita app/views/index.erb
end


post '/abuelita' do
  user_input = params[:user_input]

  grito = mayus?(user_input)
  cuenta = 0
  while user_input != "Abuelita te quiero, pero tengo que irme" && cuenta != 1
		if user_input == ""
			redirect to("/?abuelita=No te quedes ahi parado")
			cuenta += 1
		elsif grito == true
			# puts "NO, NO DESDE 1983"
			redirect to("/?abuelita=NO, NO DESDE 1983")
			cuenta = 0
		else
			# puts "HUH?! NO TE ESCUCHO, HIJO!"
			redirect to("/?abuelita=HUH?! NO TE ESCUCHO, HIJO!")
			cuenta = 0
		end
		redirect to('/')

		# palabra = gets.chomp
		grito = mayus?(user_input)
	end

  redirect to("/?abuelita=Adios mijo")
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
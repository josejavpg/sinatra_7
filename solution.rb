require "sinatra"

get '/' do
	erb :index
end

post '/respuesta' do
	
	@mensaje= params[:txtMensaje]
	if !@mensaje.empty? 
		if @mensaje == @mensaje.upcase
			@mensaje = "Ahhh si, manzanas!"
		else
			@mensaje = "Habla más duro mijito"
		end
		erb :respuesta
	else
		erb :index
	end
	
end
# post '/' do
#   "Hello World"
# end
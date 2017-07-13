require "sinatra"

get '/' do
	erb :index
end

post '/respuesta' do
	@mensaje= params[:txtMensaje]
	if @mensaje == @mensaje.upcase
		@mensaje = "Ahhh si, #{@mensaje.downcase}!"
	else
		@mensaje = "Habla más duro mijito"
	end
	erb :respuesta
end
# post '/' do
#   "Hello World"
# end
require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @reverse_name = params[:name].reverse 
    "#{@reverse_name}"
  end
  
  get '/square/:number' do 
    @square = (params[:number].to_i * params[:number].to_i).to_s 
    "#{@square}"
  end
  
  get '/say/:number/:phrase' do 
    response = ''
    params[:number].to_i.times do 
      response += params[:phrase]
    end
    response
  end 

end
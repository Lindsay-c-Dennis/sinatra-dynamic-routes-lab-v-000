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
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1]
    @num2 = params[:number2]
    case params[:operation]
    when 'add'
      @num1 + @num2 
    when 'subtract'
      @num1 - @num2 
    when 'multiply'
      @num1 * @num2 
    when 'divide'
      @num1 / @num2
    end
  end

end
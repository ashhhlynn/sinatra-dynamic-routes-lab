require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name= params[:name].reverse
    "#{@name}"
  end

  get '/square/:number'   do 
  @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end



    get '/say/:number/:phrase' do
      @string = ''
      params[:number].to_i.times do
        @string += params[:phrase]
      end
     "{#@string}"
    end



end
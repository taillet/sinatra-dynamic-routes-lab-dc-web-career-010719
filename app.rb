require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase].to_s
    array = []
    @num.times do
      array << @phrase
    end
     array.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    a = params[:word1]
    b = params[:word2]
    c = params[:word3]
    d = params[:word4]
    e = params[:word5]
    array = [a,b,c,d,e]
    array.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    f = params[:number1].to_f
    g = params[:number2].to_f
    o = params[:operation].to_s
    if o == "add"
      o = "+"
    elsif o == "subtract"
      o = "-"
    elsif o == "multiply"
      o = "*"
    elsif o == "divide"
      o = "/"
    end
    "#{f.method(o).(g)}"
  end

end

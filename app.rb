require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @p = params[:phrase]
    "#{@p * @num}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get "/:operation/:number1/:number2" do
    @opps = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    # @answer = @num1 @opps @num2
    # "#{@answer}"
   #"#{@num1} #{@opps} #{@num2}"
   @num1 @opps @num2
  end

end

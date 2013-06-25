require_relative '../../config/environment'
get "/" do
 "hello"
end

get '/:word' do
  # @word = params[:word]
  # Word.find(1)
  # @result = Word.new(text: @word).length
  p @result
  # p Word.new(@word).text
  erb :index
end

post '/:word' do 
  erb :index
end




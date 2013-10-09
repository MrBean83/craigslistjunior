get '/' do
  # puts "[LOG] Getting /"
  # puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params[:user_input]}"
  
  erb :get_cool_url
end

post '/cool_url' do
  # puts "[LOG] Posting to /cool_url"
  # puts "[LOG] Params: #{params[:user_input]}"
  @user_input = params[:user_input]
  erb :post_cool_url
end

get '/' do
 @categories = Category.all
 erb :index
end


get '/posts/:category' do
  @category = params[:category]
  erb :list_category_posts
end


get '/new_post' do
  erb :create_post
end

post '/new_post' do
  @post = Post.create(params[:post])
  redirect to("/edit_post/#{@post.key}")
end

get '/edit_post/:key' do
  @key = params[:key]
  @post = Post.where(key: @key)
  erb :edit_post
end

post '/updated' do
  @post = Post.find_by_item(params[:post][:item])
  puts "THIS IS POST #{@post}"
  @post.update_attributes(params[:post])
  @categories = Category.all
  erb :index
end



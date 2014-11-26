#CREATE
get '/post/:id/comment/new' do
  @post= Post.find(params[:id])
  erb :'comments/new_form'
end

post '/post/:id/comment' do
  @post= Post.find(params[:id])
  comment= Comment.new(params[:comment])
  @post.comments.create( content: params[:comment][:content], user: current_user, post_id: @post.id )
  redirect("/post/#{@post.id}")
end

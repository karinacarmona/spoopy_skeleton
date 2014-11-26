get '/post/:id' do
  @post= Post.find(params[:id])
  erb :'posts/show'
end

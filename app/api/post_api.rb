class Post_API < Grape::API
  resource :posts do

    get '/', jbuilder:'posts/index' do
      @posts = Post.all
    end

    get ':id', jbuilder:'posts/show' do
      @post = Post.find(params[:id])
    end

    post do
      Post.create({
                      title: params[:title],
                      content: params[:content]
                  })
    end

    put ':id' do
      Post.find(params[:id])
          .update({
                      title: params[:title],
                      content: params[:content]
                  })
    end

    delete ':id' do
      Post.find(params[:id]).destroy
    end
  end
end
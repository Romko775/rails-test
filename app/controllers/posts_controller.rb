class PostsController < ApplicationController
    # View for creating new post.
    # @post need to be initialised to show errors after form submitting & not passing validation
    def new
        @post = Post.new
    end
    # View for showing post by id
    def show
        @post = Post.find(params[:id])
    end
    # View for editing post
    def edit
        @post = Post.find(params[:id])
    end
    # View for update the post
    # In pair with <edit>
    def update
        @post = Post.find(params[:id])
        if (@post.update(post_params))
            redirect_to @post
        else
            render 'edit'
        end
    end
    # View for deleting post
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to home_path
    end
    # View to create post
    def create
        @post = Post.new(post_params)
        if (@post.save)
            redirect_to @post
        else
            render 'new'
        end
    end
    # Private method to permit form fields to be saved
    private def post_params
        params.require(:post).permit(:title, :description)
    end
end

class PagesController < ApplicationController
    def index
        @posts = Post.all
    end

    def about
        @title = 'about'
    end
end

class PagesController < ApplicationController
  def index
    @comida_posts = Post.by_branch('comida').limit(8)
    @perros_posts = Post.by_branch('perros').limit(8)
    @videojuegos_posts = Post.by_branch('videojuegos').limit(8)
  end


end

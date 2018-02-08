class BlogpostsController < ApplicationController
  layout 'blogposts'

  def index
    @test = "お元気ですか？"
    @data = Blogpost.all.order('created_at desc')
    @genre = Bloggenre.all
  end

  def add
    @blogpost = Blogpost.new
    @genres = Bloggenre.all
    if request.post? then
      @blogpost = Blogpost.create blogposts_params
      redirect_to '/blogposts'
    end
  end

  def edit
    @blogpost = Blogpost.find params[:id]
    if request.patch? then
      @blogpost.update blogposts_params
      redirect_to '/blogposts'
    end
  end

  def delete
      @blogpost = Blogpost.find params[:id]
    if request.post? then
      @blogpost.destroy
      redirect_to '/blogposts'
    end
  end

  private

  def blogposts_params
    params.require(:blogpost).permit(:title, :read, :content, :bloggenre_id)
  end

end

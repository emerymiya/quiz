class PagesController < ApplicationController
  def index
    @pages = Page.all
    @page = Page.new
  end

  def create
    Page.create(page_params)
    redirect_to root_path
  end

  private 

  def page_params
    params.require(:page).permit(:book, :author)
  end

end

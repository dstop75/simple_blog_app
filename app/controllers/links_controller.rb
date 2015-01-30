class LinksController < ApplicationController

  http_basic_authenticate_with name: "dan", password: "password", only: :destroy

  def create
    @article = Article.find(params[:article_id])
    @link = @article.links.create(link_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @link = @article.links.find(params[:id])
    @link.destroy
    redirect_to article_path(@article)
  end

  private
    def link_params
      params.require(:link).permit(:href, :title)
    end
end

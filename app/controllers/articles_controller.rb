class ArticlesController < ApplicationController

	def index
		@articles = Article.order(created_at: :desc)
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to article_path(@article)
		else
			render :new
		end
	end

	def show
		@article = Article.find(params[:id])
		@comment = Comment.new
		@comment.article_id = @article.id
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
	end

private

	def article_params
  		params.require(:article).permit(:title, :body, :tag_list, :image, :author_name)
	end

end

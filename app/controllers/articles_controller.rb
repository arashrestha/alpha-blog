class ArticlesController < ApplicationController
before_action :set_article, only: [:edit, :destroy, :show, :update]
before_action :require_user, except: [:index, :show]
before_action :require_same_user, only: [:edit,:update,:destroy]
    def index
        @articles=Article.paginate(page: params[:page],per_page: 3)
    end
    
    def new
        @article=Article.new
    end

    def create
 
        @article=Article.new(article_params)
        @article.user=current_user
        if @article.save

            flash[:success] = "Article was successfully created"
            
            redirect_to article_path(@article)
            
            else
            
            render 'new'
            
        end
    end

    def edit
        @article=Article.find(params[:id])
    end

    def update
        @article=Article.find(params[:id])
        if @article.update(article_params)
            flash[:success]="Article was successfully updated"
            redirect_to article_path(@article)
        else
            render 'edit'
        end
    end

    def destroy
        @article=Article.find(params[:id])
        @article.destroy
        flash[:success]="Articles successfully destroyed"
        redirect_to articles_path
    end

    def show
        @article=Article.find(params[:id])
    end
    private
    def article_params
        params.require(:article).permit(:title,:description)
    end

    def set_article
        @article=Article.find(params[:id])
    end

    def require_same_user
        if current_user != @article.user and !current_user.admin?
            flash[:danger]="you can only edit or delete your own article"
            redirect_to root_path
        end
      end
end

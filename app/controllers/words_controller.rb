class WordsController < ApplicationController
    before_filter :authenticate_user!

	def index
		@words = Word.all
		@words = Word.paginate(:page => params[:page], :per_page => 10)
	end

	def show
		@word = Word.find(params[:id])
	end

	def new
		@word = Word.new
	end

	def edit
  	  @word = Word.find(params[:id])
	end

	def create
	  @word = Word.new(word_params)
	 
	  if @word.save
	    redirect_to @word
	  else
	    render 'new'
	  end
	end

	def update
	  @word = Word.find(params[:id])
	 
	  if @word.update_attributes(word_params)
	    redirect_to @word
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @word = Word.find(params[:id])
	  @word.destroy
	 
	  redirect_to words_path
	end
 
	private
	  def word_params
	    params.require(:word).permit(:meaning, :spelling)
	  end

end

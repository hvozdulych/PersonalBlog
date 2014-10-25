class WordsController < ApplicationController
	def index
		@words = Word.all
	end

	def show
		@word = Word.find(params[:id])
	end

	def new
	end

	def create
	  @word = Word.new(params[:word])
 
      @word.save
      redirect_to @word
	end



end

class QuizzesController < ApplicationController

	# POST /quiz
 	# POST /quiz.json
	def create
	    @quiz = Quiz.new(quiz_params)
	    @quiz.user = current_user
	    respond_to do |format|
	      if @quiz.save
	        format.html { redirect_to profile_path(current_user.profile), notice: 'Quiz has BEGUN WOOOHOOOO' }

	        format.json { render :show, status: :created, location: @quiz }
	      else
	        format.html { render :new }
	        format.json { render json: @quiz.errors, status: :unprocessable_entity }
	      end
	    end
	end

  	private

		def quiz_params
			{ name: "Sample Quiz", description: "Some random description"}
		end
end


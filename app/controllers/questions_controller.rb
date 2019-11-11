class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    # if question == 'hello'
    # @answer = 'hello'
    # end

    # if question == 'What time is it?'
    # @answer = 'What time is it?'
    # end

    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

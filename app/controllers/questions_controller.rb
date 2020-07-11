class QuestionsController < ApplicationController
  def ask
    # this is my ask method
  end

  def answer
    @question = params[:question]
    if @question.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @answer = 'Great'
    else
      @answer = "I don't care, go to work!"
    end
  end
end

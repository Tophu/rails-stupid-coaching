class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question_asked = params[:question]
    # @answer = question_asked
    if @question_asked == 'I am going to work'
      @answer = 'Great!'
    elsif @question_asked.include?('?')
      @answer = 'Silly question, get dressed and go to work'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end

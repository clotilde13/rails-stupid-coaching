class QuestionsController < ApplicationController
  def ask
    params[:question]
  end

  def answer
    if params[:question] == "I am going to work"
      @answer = 'Great!'
    elsif params[:question].include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care det dressed and go to work"
    end
    @answer
  end
end

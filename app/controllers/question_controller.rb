class QuestionController < ApplicationController
  def ask
  end

  def answer
    @question = params[:userinput]
    if params[:userinput].downcase == "i'm going to work!"
      @answer = 'Great!'
    elsif params[:userinput][-1].downcase == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care go to work!"
    end
  end
end

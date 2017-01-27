class ChoisesController < ApplicationController
  def create
@question = Question.find(params[:question])
text = params[:text]
    correct = params[:correct] =='1'
    new = Choise.create(:text => text, :correct => correct, :question_id => @question.id)

    if new.correct
      @question.answer = new
    end
redirect_to questions_path(@question)

  end


  def destroy
    @question = Question.find(params[:question])
    @choice = choice.find(params[:choice])
    @choice.destroy

    redirect_to questions_path(@question)
  end
end

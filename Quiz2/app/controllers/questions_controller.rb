class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @questions.sort {|a, b| a.text <=> b.text}
    respond_to do |format|
      format.html
      format.xml {render :xml => @questions}
    end
  end

  def show
    @questions = Questions.find(params[:id])
    respond_to do |format|
      format.html
      format.xml { render :xml => @questions}
    end
  end

  def new
    @questions = Questions.new
    respond_to do |format|
    format.xml { render :xml => @questions}
    end
  end

  def edit
    @questions = Questions.find(params[:id])
  end

  def create
    @question = Question.new(params_question)
    respond_to do |format|
      if @question.save
        format.html { redirect_to(@question, :notice => "Pregunta agregada exitosamente.")}
        format.xml {render :xml => @question, :status => :created, :location => @question}
      else
        format.html { render :action => 'new'}
        format.xml { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @question = Question.find(params[:id])
    respond_to do|format|
      if @question.update_attributes(params_question)
        format.html { redirect_to(@question, :notice => 'Pregunta actualizada exitosamente')}
        format.xml {head :ok}
      else
        format.html { render :action => 'edit'}
        format.xml {render :xml => @question.errors, :status => :unprocessable_entity}

      end
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    respond_to do |format|
      format.html { redirect_to(question_url)}
      format.xml {head :ok}
    end
  end
  private
  def params_question
    params.require(:question).permit(:text)
  end
end
has_many :choices
def uncorrect
  choices.each { |c| c.correct = false}
end
def answer
  uncorrect
  choices.select {|c| c.correct} [0]
end
def answer= choice
  if !answer.nil?
    answer.correct = false
  end
  if choices.include? choice
    choice.correct = true
  else
    choices << choice
    choice.correct = true
  end
end



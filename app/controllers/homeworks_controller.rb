class HomeworksController < ApplicationController
  def index
    @homeworks = Homework.all
  end

  def show
    @homework = Homework.find(params[:id])
    # params[:homework_id]ではなくparams[:id]にすること！
  end
end

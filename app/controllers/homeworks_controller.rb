class HomeworksController < ApplicationController
  def index
    @homeworks = Homeworks.all
  end

  def show
  end
end

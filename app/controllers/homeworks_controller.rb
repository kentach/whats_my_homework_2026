class HomeworksController < ApplicationController
  def index
    @all_eiken_levels = Homework.includes(:classroom) #全ての英検級の宿題一覧を取得する
    @classrooms = Classroom.all #タブの作成
    
    @q = Homework.ransack(params[:q]) #検索機能ransack。ransack(params[:q])にすること。
    @homeworks = @q.result(distinct: true).includes(:classroom) 
    #　includesで複数形にすること。（）には関連するカラム：classroomを入れる。
    # result(distinct: true)は、検索結果を重複のないユニークなレコードに限定するためのオプション。

    # タブクリック → classroom_idで絞り込みをする記述。
    # find_byは条件に当てはまる特定の一件を取得する。
    @selected_classroom = Classroom.find_by(id: params[:classroom_id])
    if @selected_classroom
      @homeworks = @homeworks.where(classroom_id: @selected_classroom.id)
    end
  end

  def show
    @homework = Homework.find(params[:id])
    #params[:homework_id]ではなくparams[:id]にすること！
    @tasks = @homework.tasks
  end
end

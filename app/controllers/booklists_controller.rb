class BooklistsController < ApplicationController
  before_action :set_homework, only:[:create]

  def create
    current_user.booklists.find_or_create_by!(homework: @homework)
                          #find_or_create_by!メソッド！

    respond_to do |format|
      format.turbo_stream
      format.html {redirect_back fallback_location: root_path}
    end
  end

  
  # destroyメソッドは、	/booklists/:id	destroy
  # DELETE /booklists/123というように、idが渡される。
  # なので、find(params[:id])にすること。
  def destroy
    booklist = current_user.booklists.find(params[:id])
    #　複数のbooklistsの名から、削除する特定のbooklistを探す。
    @homework = booklist.homework
    # そのbooklistのhomeworkを代入。これはturboのdestroyで使う。
    booklist.destroy
    # booklistを削除すること！

    respond_to do |format|
      format.turbo_stream
      format.html {redirect_back fallback_location: root_path}
    end

  end

  private

  def set_homework
    @homework = Homework.find(params[:homework_id])
    # destroy のURLは、DELETE /booklists/:idなので、:createのみ。
  end
end

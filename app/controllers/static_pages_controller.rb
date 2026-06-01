class StaticPagesController < ApplicationController
  def top
    if user_signed_in?
      redirect_to homeworks_path
    end
    #Userがサインインしていれば、homeworks_pathに飛ばす。
  end
end

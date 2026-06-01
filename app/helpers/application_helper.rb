module ApplicationHelper
  def page_title(title = '')
    base_title = "What's My Homework?"
    title.present? ? "#{title} || #{base_title}" : base_title

    #もしタイトルが存在すれば、タイトルとbase_titleを表示する。そうでなければ、base_titleのみ表示する
  end
end

module ApplicationHelper
  def page_title
    title = "FISHER MAN"
    title = @page_title + " - " + title if @page_title
    title
  end
end

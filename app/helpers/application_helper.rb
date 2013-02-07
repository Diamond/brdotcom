module ApplicationHelper
  def build_nav(items)
    str = ''
    str += content_tag :li do
      content_tag :a, "Badges", :href => "#badges"
    end
    items.each do |nav|
      str += content_tag :li do
        content_tag :a, nav, :href => "##{nav.downcase}"
      end
    end
    str += content_tag :li do
      content_tag :a, "About", :href => "#about"
    end
    raw str
  end
end

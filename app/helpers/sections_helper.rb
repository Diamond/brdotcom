module SectionsHelper
  def h2_or_h3(section)
    if section.parent_id.nil?
      return content_tag :h2, section.title
    else
      return content_tag :h3, section.title
    end
  end
end

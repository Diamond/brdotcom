module SectionsHelper
  def h2_or_h3(section)
    content_tag(section.parent_id.nil? ? :h2 : :h3, section.title)
  end
end

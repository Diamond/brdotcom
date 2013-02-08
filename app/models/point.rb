class Point < ActiveRecord::Base
  attr_accessible :body, :section_id, :ordering
  belongs_to :section

  scope :ordered, order(:ordering)
  scope :hierarchy, order(:section_id).order(:ordering)
end

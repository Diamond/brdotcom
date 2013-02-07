class Point < ActiveRecord::Base
  attr_accessible :body, :section_id, :ordering
  belongs_to :section

  scope :ordered, order(:ordering)
end

class Section < ActiveRecord::Base
  attr_accessible :parent_id, :title, :aside, :ordering
  belongs_to :section, :foreign_key => 'parent_id'
  has_many :sections, :foreign_key => 'parent_id'
  has_many :points

  scope :top_level, where({parent_id: nil}).order(:ordering)
end

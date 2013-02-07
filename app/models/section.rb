class Section < ActiveRecord::Base
  attr_accessible :parent_id, :title, :aside, :ordering
  belongs_to :parent, :class_name => 'Section', :foreign_key => 'parent_id'
  has_many :sections, :foreign_key => 'parent_id'
  has_many :points

  scope :top_level, where({parent_id: nil})
  scope :ordered, order(:ordering)
  scope :hierarchy, order(:parent_id).order(:ordering)
  scope :subsections, where("parent_id is not null")
end

class AddAsideToSection < ActiveRecord::Migration
  def change
    add_column :sections, :aside, :string
  end
end

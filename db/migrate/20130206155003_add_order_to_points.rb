class AddOrderToPoints < ActiveRecord::Migration
  def change
    add_column :points, :order, :integer, default: 0
  end
end

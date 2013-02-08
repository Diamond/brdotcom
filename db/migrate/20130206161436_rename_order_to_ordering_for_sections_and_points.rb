class RenameOrderToOrderingForSectionsAndPoints < ActiveRecord::Migration
  def up
    change_table :sections do |t|
      t.rename :order, :ordering
    end
    change_table :points do |t|
      t.rename :order, :ordering
    end
  end

  def down
    change_table :sections do |t|
      t.rename :ordering, :order
    end
    change_table :points do |t|
      t.rename :ordering, :order
    end
  end
end

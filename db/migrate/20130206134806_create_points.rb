class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.text :body
      t.integer :section_id

      t.timestamps
    end
  end
end

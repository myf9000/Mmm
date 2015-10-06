class CreateEats < ActiveRecord::Migration
  def change
    create_table :eats do |t|
      t.string :title
      t.text :components
      t.text :preparation
      t.string :preparation_time
      t.string :cost
      t.string :tags

      t.timestamps null: false
    end
  end
end


class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end

    create_table :posts do |t|
      t.integer :category_id
      t.string :item
      t.string :description
      t.string :price
      t.string :contact_info
      
      t.timestamps
    end
  end
end

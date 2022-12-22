class CreateClothings < ActiveRecord::Migration[5.2]
  def change
    create_table :clothings do |t|

      t.string :image_id
      t.text :reaction

      t.timestamps
    end
  end
end

class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :name,  null: false
      t.text :item,  null: false
      t.text :cook,  null: false
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true
      t.timestamps
    end
  end
end

class CreateThemes < ActiveRecord::Migration[5.2]
  def change
    create_table :themes do |t|
      t.string :name
      t.integer :type_t

      t.timestamps
    end
  end
end

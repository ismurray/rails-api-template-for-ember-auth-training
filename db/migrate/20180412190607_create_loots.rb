class CreateLoots < ActiveRecord::Migration[5.1]
  def change
    create_table :loots do |t|
      t.text :name, null: false
      t.integer :value

      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

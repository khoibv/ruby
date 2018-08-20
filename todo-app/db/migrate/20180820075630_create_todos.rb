class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :todo
      t.boolean :status
      t.integer :priority

      t.timestamps
    end
  end
end

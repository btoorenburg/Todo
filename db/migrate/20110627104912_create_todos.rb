class CreateTodos < ActiveRecord::Migration
  def self.up
    create_table :todos do |t|
      t.string :name
      t.date :due_on
      t.boolean :completed

      t.timestamps
    end
  end

  def self.down
    drop_table :todos
  end
end

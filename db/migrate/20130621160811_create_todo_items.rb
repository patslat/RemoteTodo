class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :body
      t.boolean :completion

      t.timestamps
    end
  end
end

class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      #  character should have a name
      t.string :name
      # actor_id (integer)
      t.integer :actor_id
      # show_id (integer).
      t.integer :show_id

      t.timestamps
    end

    add_index :characters, :actor_id
    add_index :characters, :show_id
  end
end

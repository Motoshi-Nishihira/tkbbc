class CreateRelationship < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :from_id
      t.integer :to_id

      t.timestamps
    end

    add_index :relationships, :id
    add_index :relationships, :from_id
    add_index :relationships, :to_id
  end
end

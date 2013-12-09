class CreateReply < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :from_id
      t.integer :to_id

      t.timestamps
    end

    add_index :replies, :id
    add_index :replies, :from_id
    add_index :replies, :to_id
  end
end

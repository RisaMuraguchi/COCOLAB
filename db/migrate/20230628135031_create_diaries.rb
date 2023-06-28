class CreateDiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :diaries do |t|
      t.text :content
      t.datetime :woke_up_at
      t.datetime :slept_at
      t.integer :activity
      t.integer :mood
      t.integer :appetite
      t.integer :user_id
      t.timestamps
    end
  end
end

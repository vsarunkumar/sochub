class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :message
      t.string :scheduled_at
      t.string :network
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

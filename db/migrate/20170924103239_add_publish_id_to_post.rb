class AddPublishIdToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :publish_id, :string
  end
end

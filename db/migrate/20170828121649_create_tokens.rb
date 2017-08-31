class CreateTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :tokens do |t|
    	t.string :access_token
    	t.references :user
    	t.string :network

      t.timestamps
    end
  end
end

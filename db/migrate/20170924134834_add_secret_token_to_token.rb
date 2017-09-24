class AddSecretTokenToToken < ActiveRecord::Migration[5.0]
  def change
    add_column :tokens, :access_secret, :string
  end
end

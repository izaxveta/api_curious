class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :name
      t.string :email
      t.string :provider
      t.string :token
      t.string :uid
      t.string :image_url
      t.string :token

      t.timestamps
    end
  end
end

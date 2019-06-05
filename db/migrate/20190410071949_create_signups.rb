class CreateSignups < ActiveRecord::Migration[5.0]
  def change
    create_table :signups do |t|
      t.string :userid
      t.string :password_digest
      t.string :company
      t.string :tel
      t.string :email
      t.timestamps null: false
    end
  end
end

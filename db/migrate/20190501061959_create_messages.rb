class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :userid
      t.string :body
      t.string :space

      t.timestamps
    end
  end
end

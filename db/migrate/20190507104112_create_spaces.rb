class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :author
      t.string :explanation
      t.string :code

      t.timestamps
    end
  end
end

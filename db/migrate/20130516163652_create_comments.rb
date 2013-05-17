class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :pin

      t.timestamps
    end
    add_index :comments, :pin_id
  end
end

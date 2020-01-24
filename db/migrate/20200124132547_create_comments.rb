class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string  :comment_nickname, null: false
      t.text    :comment, null: false
      t.integer :likes
      t.integer  :bads
      t.timestamps
    end
  end
end

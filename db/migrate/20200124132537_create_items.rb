class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string  :title, null: false
      t.string  :image
      t.text    :text
      t.string  :nickname
      t.integer  :likes
      t.integer  :bads
      t.timestamps
    end
  end

end

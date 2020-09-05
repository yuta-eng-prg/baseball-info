class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text       :content,       null: false
      t.integer    :generation_id, null: false
      t.integer    :genre_id,      null: false
      t.integer    :body_parts_id, null: false
      t.integer    :category_id,   null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end

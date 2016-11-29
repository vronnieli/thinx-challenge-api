class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :comment_text
      t.references :parent_comment, index: true
      t.belongs_to :post, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.belongs_to :user, foreing_key: true
      t.belongs_to :post, foreing_key: true

      t.timestamps
    end
  end
end

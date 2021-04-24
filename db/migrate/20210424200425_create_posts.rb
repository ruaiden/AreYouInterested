class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :summary
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end

class CreateBlogPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :content
      t.datetime :publishdate

      t.timestamps
    end
  end
end

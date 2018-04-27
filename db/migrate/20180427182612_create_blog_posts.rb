class CreateBlogPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_posts do |t|
      t.column :blog_post_title, :string
      t.column :blog_post_body, :string
      t.column :date_created, :timestamp
    end
  end
end

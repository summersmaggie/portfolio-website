class BlogPost < ApplicationRecord
  validates :blog_post_title, :presence => true
  validates :blog_post_body, :presence => true

  rails_admin do
    configure :blog_posts do
      label 'Owner of this blog post: '
    end
  end
end

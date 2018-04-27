class BlogPost < ApplicationRecord
  validates :blog_post_title, :presence => true
  validates :blog_post_body, :presence => true 
end

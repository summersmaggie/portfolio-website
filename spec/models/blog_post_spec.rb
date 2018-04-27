require 'rails_helper'

describe BlogPost do
  it { should validate_presence_of :blog_post_title }
  it { should validate_presence_of :blog_post_body }
end

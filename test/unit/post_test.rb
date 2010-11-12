require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "it fails to create a new Post without a state" do
    post = Post.create(:title => 'this is title', :body => 'this is body')
    assert(post.state == 'created', "post without a state")
    puts "created the following post: #{post.inspect}"
  end
end


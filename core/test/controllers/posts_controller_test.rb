require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "index get success status" do
    get posts_url
    assert_response :success
  end

  test "index get two posts" do
    get posts_url
    assert json_body.size == 2
  end

  test "show get success status" do
    get post_url(posts(:movie_post))
    assert_response :success
  end

  test "show get proper post" do
    post = posts(:movie_post)

    get post_url(post)
    assert json_body['id'] == post.id
  end
end

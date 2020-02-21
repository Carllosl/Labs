require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user=User.find_by_email("admin@mail.ru")
    sign_in @user
  end
  test "the truth" do
     assert_redirect_to '/'
   end
end

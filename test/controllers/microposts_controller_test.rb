require 'test_helper'

class MicropostsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @micropost = microposts(:one)
  end
  
  test "should get edit" do
    get edit_micropost_path(@micropost)
    assert_response :success
  end
  
end

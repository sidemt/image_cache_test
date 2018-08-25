require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest
  
  def setup
    # @user = users(:michael)
  end
  
  test "Micropost display on home" do
    get root_url
    assert_select 'table#micropost_table'
    assert_select 'td#micropost_text', text: 'MyText'
    assert_select 'span#micropost_updated_at', text: 'Updated 10 minutes ago.'
  end
end

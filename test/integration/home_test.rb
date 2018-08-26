require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest
  
  def setup
    @micropost = microposts(:one)
  end
  
  test "Micropost display on home" do
    get root_url
    assert_select 'table#micropost_table'
    assert_select 'td#micropost_text', text: @micropost.content
    assert_select 'span#micropost_updated_at', text: 'Updated 10 minutes ago.'
  end
end

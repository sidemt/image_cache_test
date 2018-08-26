require 'test_helper'

class MicropostsEditTest < ActionDispatch::IntegrationTest
  
  def setup
    @micropost = microposts(:one)
  end
  
  test "successful edit" do
    after_change = "changed text"
    
    get edit_micropost_path(@micropost)
    assert_template 'microposts/edit'
    
    patch micropost_path(@micropost), params: { micropost: { content: after_change } }
    
    assert_redirected_to root_url
    follow_redirect!
    assert_not flash.empty?
    assert_select 'span#micropost_updated_at', text: 'Updated less than a minute ago.'
    
    @micropost.reload
    assert_equal after_change, @micropost.content
  end
  
  test "unsuccessful edit" do
    get edit_micropost_path(@micropost)
    assert_template 'microposts/edit'
    patch micropost_path(@micropost), params: { micropost: { content: "" } }
    assert_template 'microposts/edit'
    assert_select 'div.alert.alert-danger'
  end
end

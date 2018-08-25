require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:michael)
    @other_user = users(:archer)
  end
  
  # # Do not show user info page to not logged in users
  # test "should redirect user when not logged in" do
  #   get user_path(@user)
  #   assert_redirected_to login_url
  # end
  
  # test "should get new" do
  #   get signup_path
  #   assert_response :success
  # end
  
  # # Check if before_action is in effect
  # test "should redirect edit when not logged in" do
  #   get edit_user_path(@user)
  #   assert_not flash.empty?
  #   assert_redirected_to login_url
  # end
  
  # test "should redirect update when not logged in" do
  #   patch user_path(@user), params: { user: { name: @user.name,
  #                                           email: @user.email } }
  #   assert_not flash.empty?
  #   assert_redirected_to login_url
  # end
  
  # # Check that admin attribute cannot be changed via the web
  # test "should not allow the admin attribute to be edited via the web" do
  #   log_in_as(@other_user)
  #   assert_not @other_user.admin?
  #   patch user_path(@other_user), params: {
  #                                 user: { password: "password",
  #                                         password_confirmation: "password",
  #                                         admin: true } }
  #   assert_not @other_user.reload.admin?
  # end
  
  # # Check that the user can edit his/her information only
  # test "should redirect edit when logged in as wrong user" do
  #   log_in_as(@other_user)
  #   get edit_user_path(@user)
  #   assert flash.empty?
  #   assert_redirected_to root_url
  # end
  
  # test "should redirect update when logged in as wrong user" do
  #   log_in_as(@other_user)
  #   patch user_path(@user), params: { user: { name: @user.name,
  #                                           email: @user.email } }
  #   assert flash.empty?
  #   assert_redirected_to root_url
  # end
  
  # # Check that only admin users can delete a user
  # test "should redirect destroy when not logged in" do
  #   assert_no_difference 'User.count' do
  #     delete user_path(@user)
  #   end
  #   assert_redirected_to login_url
  # end
  
  # test "should redirect destroy when logged in as a non-admin" do
  #   log_in_as(@other_user)
  #   assert_no_difference 'User.count' do
  #     delete user_path(@user)
  #   end
  #   assert_redirected_to root_url
  # end
  
  # # Test the delete link on user profile page
  # test "should delete user" do
  #   log_in_as(@user)
  #   get user_path(@other_user)
  #   assert_select 'a', text: 'Delete this user', count: 1
  #   assert_difference 'User.count', -1 do
  #     delete user_path(@other_user)
  #   end
  # end
end

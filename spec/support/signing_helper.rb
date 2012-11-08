module SignHelper
  def sign_in(user)

    visit new_admin_user_session_path
    fill_in 'Email', :with => 'admin@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Login'

  end
end
class LoginAdm < SitePrism::Section
  
  element :login_email,    "#user_email"
  element :login_password, "#user_password"
  element :signup_button,  ".btn.btn-primary"

  def criar_login
    login_email.set    Faker::Internet.email
    login_password.set Faker::Crypto.md5
    signup_button.click
  end
end
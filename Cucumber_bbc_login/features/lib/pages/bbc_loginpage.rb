require 'capybara/dsl'

class BbcLoginpage
  include Capybara::DSL
  attr_accessor :error

  LOGINPAGE_URL = 'https://account.bbc.com/signin'.freeze
  USER_FIELD = 'user-identifier-input'.freeze
  PASSWAORD_FIELD = 'password-input'.freeze
  SIGNIN_CLICK_LOGIN = 'submit-button'.freeze
  ERROR_MESSAGE = 'form-message-username'

  def initialize
    @error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
  end

  def visit_loginpage
    visit(LOGINPAGE_URL)
  end

  def username(email)
    fill_in(USER_FIELD, with: email)
  end

  def password(pass)
    fill_in(PASSWAORD_FIELD, with: pass)
  end

  def click_signin_loginpage
    find(:id, SIGNIN_CLICK_LOGIN).click
  end

  def error_check
    find(:id, ERROR_MESSAGE).text
  end

end
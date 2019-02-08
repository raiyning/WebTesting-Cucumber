require 'capybara/dsl'

class BbcLoginpage
  include Capybara::DSL
  attr_accessor :error, :errorshort, :erroremptypassword

  LOGINPAGE_URL = 'https://account.bbc.com/signin'.freeze
  USER_FIELD = 'user-identifier-input'.freeze
  PASSWAORD_FIELD = 'password-input'.freeze
  SIGNIN_CLICK_LOGIN = 'submit-button'.freeze
  ERROR_MESSAGE = 'form-message-username'.freeze
  ERROR_SHORT_PASSWORD = 'form-message-password'.freeze
  ERROR_EMPTY_PASSWORD = 'form-message-password'.freeze

  def initialize
    @error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
    @errorshort = 'Sorry, that password is too short. It needs to be eight characters or more.'
    @erroremptypassword = "Something's missing. Please check and try again."
  end

  def visit_loginpage
    visit(LOGINPAGE_URL)
  end

  def fill_username(email)
    fill_in(USER_FIELD, with: email)
  end

  def fill_password(pass)
    fill_in(PASSWAORD_FIELD, with: pass)
  end

  def click_signin_loginpage
    find(:id, SIGNIN_CLICK_LOGIN).click
  end

  def error_check
    find(:id, ERROR_MESSAGE).text
  end

  def error_short_check
    find(:id, ERROR_SHORT_PASSWORD).text
  end

  def error_empty_check
    find(:id, ERROR_EMPTY_PASSWORD).text
  end

end
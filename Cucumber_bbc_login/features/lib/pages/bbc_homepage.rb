require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL

  HOMEPAGE_URL = 'https://www.bbc.co.uk'.freeze
  LOGINPAGE_URL = 'https://account.bbc.com/signin'.freeze
  SIGNIN_CLICK = 'idcta-username'.freeze
  USER_FIELD = 'user-identifier-input'.freeze
  PASSWAORD_FIELD = 'password-input'.freeze

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def visit_loginpage
    visit(LOGINPAGE_URL)
  end

  def click_sigin
    find(SIGNIN_CLICK).click
  end

  def username(email)
    fill_in(USER_FIELD, with: email)
  end

  def password(pass)
    fill_in(PASSWAORD_FIELD, with: pass)
  end

end
require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL

  HOMEPAGE_URL = 'https://www.bbc.co.uk'.freeze
  LOGINPAGE_URL = 'https://account.bbc.com/signin'.freeze
  SIGNIN_CLICK = 'idcta-link'.freeze


  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def visit_loginpage
    visit(LOGINPAGE_URL)
  end

  def click_homepage_sign
    find(:id, SIGNIN_CLICK).click
  end

end
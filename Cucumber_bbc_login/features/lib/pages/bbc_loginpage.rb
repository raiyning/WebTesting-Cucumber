require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL

  LOGINPAGE_URL = 'https://account.bbc.com/signin'.freeze

  def visit_loginpage
    visit(LOGINPAGE_URL)
  end

end
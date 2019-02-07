Given("I access the BBC login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.click_homepage_sign
end

Given("I input incorrect username details") do
  @bbc_site.bbc_loginpage.fill_username('mhzfxnhgnhf@ghghghf.com')
end

Given("I input incorrect password details") do
  @bbc_site.bbc_loginpage.fill_password('thisispassword23')
end

When("I try to login") do
  @bbc_site.bbc_loginpage.click_signin_loginpage
end

Then("I recieve an error for not finding the account") do
  expect(@bbc_site.bbc_loginpage.error_check).to eq (@bbc_site.bbc_loginpage.error)
  sleep 2
end

Given("I access the bbc login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.click_homepage_sign
end

Given("I input a password that is too short") do
  @bbc_site.bbc_loginpage.fill_password('pp')
end

Then("I receive an error for short password") do
  pending # Write code here that turns the phrase above into concrete actions
end
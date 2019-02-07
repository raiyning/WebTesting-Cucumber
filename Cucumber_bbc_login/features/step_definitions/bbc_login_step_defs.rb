Given("I access the BBC login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.visit_loginpage
  sleep 4
end

Given("I input incorrect username details") do
  @bbc_site.bbc_homepage.username('gegegegeg@yellow.com')
  sleep 4
  @bbc_site.bbc_homepage.password('thisispassword23')
  sleep 4
end

Given("I input incorrect password details") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I try to login") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I recieve an error for not finding the account") do
  pending # Write code here that turns the phrase above into concrete actions
end
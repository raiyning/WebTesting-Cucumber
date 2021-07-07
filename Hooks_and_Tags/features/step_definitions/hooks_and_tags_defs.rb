Given("I have a before hook in place with name details") do
 p @users
end

Then("I can validate the information in the before hook") do
  expect(@users[0]).to eq 'Dave'
end

Given("I use a tag") do
  p 'this is the given for tag use'
end

Then("onlky this test will run") do
  p ' only run if i use the tage'
end
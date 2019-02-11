
Given("I have more than one data row in my example table") do
end

Given(/^it include (.*) as a string and (.*) as a interger$/) do |name, age|
  age = age.to_i
  expect(name).to be_kind_of String
  expect(age).to be_kind_of Integer
  p 'first tetsts'
end

Then(/^i can validate the (.*) & (.*) are correct$/) do |name, age|
  age = age.to_i
  expect(name).to eq("Dave").or eq("Tim")
  expect(age).to eq(23).or eq(34)
  p 'second tets'
  p "dgd"
end
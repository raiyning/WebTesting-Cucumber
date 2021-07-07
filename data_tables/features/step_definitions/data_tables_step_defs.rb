Given("I Have a data table") do |table|
  @table = table.raw
  puts @table
end

Then("I am able to print out each name and age to the command line") do
  @table.each do |data|
    puts "users name is #{data[0]} and age is #{data[1]}"
    expect(data[1].to_i).to be < 60
  end
end
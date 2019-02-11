 Before do 
  @users = ['Dave','Gill','Jon']
 end

 After do 
  # p 'Im an after hook '
 end

 Before('@test2') do 
  p 'this is specific output for test2'
 end
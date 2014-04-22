checkmark = "\u2713"
prefixend = "\u2514"
prefix = "\u251C"
childmarkend = " #{prefixend} ".bold.blue
childmark = " #{prefix} ".blue.bold
checkmark = "#{checkmark}".green

before "hello" do
  puts "Starting the hello module".bold.blue
end

before "hello:prepare" do
  print " #{childmark}"
  print "Preparing the nodes........................"
  start_spinner()
end

after "hello:prepare" do
  stop_spinner()
  puts "#{checkmark}"
end

# This is an example of the Ruby language
def main()
  arr = []

  for i in 0..1
    print "Enter number " + (i+1).to_s + "\n"
    num = gets.chomp.to_i
    arr.append(num)
  end
  
  print "Enter operator\n"
  operator = gets.chomp

  invalid = false;
  if operator == '+'
    result = arr[0] + arr[1]
  elsif operator == '-'
    result = arr[0] - arr[1]
  else
    print "This operator has not been included.\n"
    invalid = true
  end

  File.open("output.txt", "w+") do |handle|
    if !invalid
      handle.syswrite(result.to_s+"\n")
    else
      handle.syswrite("Invalid operation\n")
    end
  end
end

main

=begin
Usage
1. Install ruby for your system and ensure it has been included to
your env's PATH. 
2. Then simply run this Ruby.rb script with ruby Ruby.rb
=end

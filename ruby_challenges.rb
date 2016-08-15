# times loop
x = 0
20.times do
  puts x = x + 1
  end

# valid or not
def validity
  puts "give me a number"
  num = gets.to_i
if num>=1 &&  num<=10
  puts "valid"
else
  puts "invalid"
end
end

#fizzbuzz
def fizzbuzz
  x = 1
  100.times do |x|
    x = x+1
    if x%15 == 0
      puts  "fizzbuzz"
    elsif x%5 == 0
      puts "buzz"
    elsif x%3 == 0
      puts "fizz"
    else
      puts x
    end
  end
end

#sum these numbers
def sum_these_numbers (x,z)
  (x+z)
end

#even numbers
def is_even(x)
  if x%2 == 0
    puts "true"
  else
    puts "false"
end
end

#captial words
def caps
  words = ["hello", "drop", "bonjour", "strings"]
  words.each {|key| puts "#{key}".upcase}
end

#calling other methods
def calling
  caps
end

#valid date
def valid_date
  puts "Insert month example mm"
  mm = gets.to_i
  puts "Insert day example dd"
  dd = gets.to_i
  puts "Insert year example yyyy"
  yyyy = gets.to_i
  if yyyy%4 == 0 && mm == 2
    if dd <= 29
        puts "true2"
      else
        puts "not a real day"
    end
  end
  if (mm == 1 || mm == 3 || mm == 5 || mm == 7 || mm == 8 || mm == 10 || mm == 12)
    if dd <= 31
      puts "true3"
    else
      puts "not a real day"
    end
  end
  if (mm ==4 || mm ==6 || mm == 9 || mm == 11)
    if dd <= 30
      puts "true4"
    else
      puts "not a real day"
    end
  end
  if mm == 2 && yyyy%4 !=0
    if dd <=28
      puts "true"
    else
      puts "not a real day"
    end
  end
  if mm >=12
    if dd >= 31
      puts "not a real day"
    else
      puts "not a real day"
    end
  end
end

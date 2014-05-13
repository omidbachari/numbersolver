MAX_VALUE = 300000000
MAX_TRIES = Math.log2(MAX_VALUE).ceil

hidden = rand(MAX_VALUE) + 1
checks_called = 0

define_method :check do |guess|
  checks_called += 1

  if checks_called > MAX_TRIES + 1
    raise "check called too many times"
  end

  if guess > hidden
    1
  elsif guess < hidden
    -1
  else
    0
  end
end


def guess_number(min, max)

 array=(min..max).to_a

 mid_point=((array.length)/2)-1
 print mid_point

while !check(mid_point)==0

if check(mid_point)==-1
  array=( ( ((array.length)/2)+1)..max )
  mid_point=(array.length)/2)-1

  if check(mid_point)==0
    return mid_point

  end

elsif check(mid_point)==1
  array=( min..(((array.length)/2)-1) )
  mid_point=((array.length)/2)-1

  if check(mid_point)==0
    return mid_point

  end

end

end




  # You can call the `check` method with a number to see if it
  # is the hidden value.
  #
  # If the guess is correct, it will return 0.
  # If the guess is too high, it will return 1.
  # If the guess is too low, it will return -1.
  #
  # If you call `check` too many times, the program will crash.
  #
  # e.g. if the hidden number is 43592, then
  #
  # check(50000) # => 1
  # check(40000) # => -1
  # check(43592) # => 0
  #
  # When you've figured out what the hidden number is, return it
  # from this method.

  #######################
  # YOUR CODE GOES HERE #
  #######################
end

guess = guess_number(1, MAX_VALUE)



if guess == hidden
  puts "Guessed correctly!"
  exit 0
else
  puts "Invalid guess."
  exit 1
end

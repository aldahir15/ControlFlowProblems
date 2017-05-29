# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
  lower_case_letters = ("a".."z").to_a
  new_word = ""
  str.split("").each{|x| new_word << x unless lower_case_letters.include?(x) }
  new_word
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  if str.length.even?
    str[((str.length/2)-1)..(str.length/2)]
  else
    str[((str.length/2))]
  end
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
  count = 0
  str.split("").each{|x| count += 1 if VOWELS.include?(x)}
  count
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  current_num = num
  total = 1
  while current_num > 0
    total *= current_num
    current_num -= 1
  end
  total
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  new_word = ""
  arr.each_index{|x|
    unless x == arr.length - 1
      new_word << (arr[x]+separator)
    else
      new_word << arr[x]
    end
  }
  new_word
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  new_word = ""
  str.split("").each_index{|x|
    if x.even?
      new_word << str[x].downcase
    else
      new_word << str[x].upcase
    end
  }
  new_word
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  str_arr = str.split(" ")
  new_word = []
  str_arr.each{|x|
    if x.length >= 5
      new_word << x.reverse
    else
      new_word << x
    end
  }
  new_word.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  n_arr = (1..n).to_a
  new_arr = []
  n_arr.each{|x|
    if (x) % 3 == 0 && (x) % 5 == 0
      new_arr << "fizzbuzz"
    elsif (x) % 3 == 0
      new_arr << "fizz"
    elsif (x) % 5 == 0
      new_arr << "buzz"
    else
      new_arr << x
    end
  }
  new_arr
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  arr.reverse
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  return false if num == 1
  (2...num).each{|x| return false if num % x == 0}
  return true
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
   (1..num).select { |n|num % n == 0}
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  new_arr = []
  factors(num).each{|x| new_arr << x if prime?(x)}
  new_arr
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  prime_factors(num).length
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  even = []
  odd = []
  arr.each{|x|
    if x.odd?
      odd << x
    else
      even << x
    end
  }
  if even.length == 1
    return even[0]
  elsif odd.length == 1
    return odd[0]
  end
end

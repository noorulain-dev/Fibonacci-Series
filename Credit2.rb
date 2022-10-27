def is_prime(number)
  (2..(number-1)).each do |num|
    return false if number % num == 0
   end
   true
end


first =0
second =1
nextterm=0

puts "Enter the total number of terms: "
num = gets.chomp.to_i

puts "Among the first " + num.to_s + " terms of Fibonacci series that are also prime numbers: "
int=1
while (int<=num+1)
  if (int<=1)
    nextterm = int
  else
    puts nextterm if (is_prime(nextterm) && nextterm>1)
	nextterm = first+second
	first=second
	second=nextterm
end
    int+=1
end

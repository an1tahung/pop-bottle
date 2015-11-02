@total_bottles = 0
@re_bottles = 0
@caps = 0


def bottles(investment)

  @fullbottles = investment / 2
  @total_bottles += @fullbottles
    
end

def howmany

  @re_bottles += @fullbottles
  @caps += @fullbottles 
  @fullbottles = 0

end

def redeem

@fullbottles = @fullbottles + @re_bottles/2 + @caps/4
@total_bottles += @fullbottles
@caps = @caps % 4
@re_bottles = @re_bottles % 2

end


#Test

print "How much money would you like to spend?"
investment = gets.chomp.to_i

bottles(investment)

until @caps < 4 && @re_bottles < 2 && @fullbottles < 1
howmany
redeem
end

puts "You get #{@total_bottles} bottles total."
puts "You have #{@re_bottles} bottle left over."
puts "You have #{@caps} caps left over."

#should return 35 bottles total

#10 from initial purchase
#17 free from bottles
#8 free from bottle caps
#1 bottle unredeemed
#3 caps unredeemed 
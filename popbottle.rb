@total_bottles = 0
@bottles = 0
@caps = 0


def buy_pop(investment)

  @fullbottles = investment / 2
  @total_bottles += @fullbottles
    
end

def howmany
#when looped the second time this adds my leftover previously unredeemed caps and bottles 
#to the redeemable caps and bottles from my redeemed full bottles
  @bottles += @fullbottles 
  @caps += @fullbottles 
  #reset to zero because once I seperate the full bottles into
  #bottles and caps they are no longer full bottles
  @fullbottles = 0 


end

def redeem

  @fullbottles = @bottles/2 + @caps/4 #shows how many full bottles I get when I redeem bottles and caps
  @totalbottles = @total_bottles += @fullbottles #adds to total bottles
  @caps = @caps % 4 #shows how many caps get left over once caps are redeemed
  @bottles = @bottles % 2 #shows how many bottles are left once bottles are redeemed

end

def result
  until @caps < 4 && @bottles < 2 && @fullbottles < 1
  howmany
  redeem
  end

puts "You get #{@total_bottles} bottles total."
puts "You have #{@bottles} bottle left over."
puts "You have #{@caps} caps left over."

end


#Test

print "How much money would you like to spend?"
investment = gets.chomp.to_i

buy_pop(investment)
result

# buy_pop(20)
# result



#should return 35 bottles total

#10 from initial purchase
#17 free from bottles
#8 free from bottle caps
#1 bottle unredeemed
#3 caps unredeemed 
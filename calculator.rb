operation=""
num1=0
num2=0
history=[]

while operation != "q" 
    puts "Enter 1 for add, 2 for subtract, 3 for multiple, 4 for divide, h for History and q for quit"   
    operation= gets.chomp() 
    def ask_input 
        puts "Enter First num:"
        num1=gets.chomp().to_i
        puts "Enter Second num:"
        num2=gets.chomp().to_i
        return num1,num2
    end    
    


if operation=="h"
    puts   history

elsif operation=="1"
    num= ask_input
    num1=num[0]
    num2=num[1]

    result= "#{num1} + #{num2} = #{num1+num2}"
    puts result
    history.append(result)

elsif operation=="2"
    num= ask_input
    num1=num[0]
    num2=num[1]
    result= "#{num1} - #{num2} = #{num1-num2}"
    puts result
    history.append(result)
    
elsif operation=="3"
    num= ask_input
    num1=num[0]
    num2=num[1]
    result= "#{num1} * #{num2} = #{num1*num2}"
    puts result
    history.append(result)

elsif operation=="4"
    num= ask_input
    num1=num[0]
    num2=num[1]
    result="#{num1} / #{num2} = #{num1/num2}"
    puts result
    history.append(result)

else puts "Wrong input"

end    
end      
        

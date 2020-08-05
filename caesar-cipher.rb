def caesarCipher(string,number) 
  
  upperc_char = (65..90).to_a
  downc_char = (97..122).to_a

  new_string =[]

  string.each_char do |ch|
    if ch.ord == 32 
      new_string.push(32.chr)
    elsif upperc_char.include?(ch.ord) || downc_char.include?(ch.ord)
 
     if (ch.ord+number) > 90 && (ch.ord+number < 97)
       
       replace_char = number - (90 - ch.ord + 1)
       replace_char += "A".ord
       new_string.push(replace_char.chr)
 
     end

     new_string.push((ch.ord + number).chr)
 
   else
 
    new_string.push(ch.ord.chr)
  end
    end
     
   phrase = new_string.join.split("\\")
    print phrase.join
    puts "\n"
end

puts "Enter your awesome string below: "
var = gets.chomp 
puts "Now let's encrypt! Type a number: "
num = gets.to_i
caesarCipher(var, num)
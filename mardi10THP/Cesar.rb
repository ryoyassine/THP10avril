
puts "enter some text"
text = gets.chomp
puts "enter a number"
n = gets.chomp.to_i


 def chiffre_de_cesar(text, n)
  text = text.split("") #split permet de prendre séparament les donnés que l'on entre dans (text = gets.chomp) le ("") -> chaque lettre
  c = text.collect{ |x| 
 x.ord >= 'a'.ord ? 97+((x.ord-97+n)%26) : # --> en fonction du chiffre entré, modulo 26   
  x.ord > 'A'.ord ? 65+((x.ord-65+n)%26) : x.ord }

  d = c.collect { |x| x.chr } 
  d.join()  
end


puts chiffre_de_cesar(text, n)
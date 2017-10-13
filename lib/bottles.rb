class Bottles
  def verse(n)
    "#{first_part(n)} #{second_part(n)}\n#{take(n)} #{third_part(n)}"
  end 
  
  def pluralize(n)
    n != 1 ? "bottles" : "bottle"
  end
  
  def first_part(n)
    n < 1 ? "No more bottles of beer on the wall," : "#{n} #{pluralize(n)} of beer on the wall,"
  end
  
  def second_part(n)
    n < 1 ? "no more bottles of beer." : "#{n} #{pluralize(n)} of beer."
  end 
  
  def take(n)
  n > 1 ? "Take one down and pass it around," : n == 1 ? "Take it down and pass it around," : "Go to the store and buy some more,"
  end   
  
  def third_part(n)
    n == 1 ? "no more bottles of beer on the wall.\n" : n < 1 ? "99 bottles of beer on the wall.\n" : n == 2 ? "1 bottle of beer on the wall.\n" : "#{n-1} #{pluralize(n)} of beer on the wall.\n"
  end
  
  def song 
    verses(99,0)
  end 
  
  def verses(v1,v2)
    v1.downto(v2).map{|v| verse(v)}.join("\n")
  end   
 
end 
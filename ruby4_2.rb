 #Printing  a histogram of the lengths of words in its input. 

 puts "enter the input"
 a = []
 
  while line = gets                      
    line = line.chomp.split(' ')  #Accepting input from keyboard as string's and splitting into word's
    a << line                     #storing the input in an array
  end
 
  a.flatten!
  b = []
  
        for i in (0..a.length-1)  #storing the word's length in another array
          b << a[i].length
        end
        

        c = Hash.new               #creating an Hash for key occurance
        
        d = b.uniq                 #storing the uniq value's of b i another array d
        
        i =0

                for t in (0...d.length)
                  for s in (0...b.length)
                    if d[t] == b[s]           
                        i = i + 1
                    end
                  end
                    c[d[t]] = i             #storing word and occurance in an Hash table
                    i = 0
                 end



               keys = c.keys.sort
               max = c.values.max

      

      stars = 6

           puts "length\t occurance's\t histogram" 
  for i in (0...keys.length)
    star_print = c[keys[i]] * stars / max
    puts "#{keys[i]} \t #{c[keys[i]]} \t\t #{ '*' * star_print}"
  end

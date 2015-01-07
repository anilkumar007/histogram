# histogram#Program to expand shorthand notations like a-z into the equivalent complete list abc...xyz.

  puts "enter the range"                    
    STDOUT.flush
    a = gets.chomp.split('')              #Accepting the range from user

    c = []

     for m in (0..a.length-1)
       if a[m] == '-'
       elsif a[m+2]!= nil                  #Modifying the array with ordinal number's for caluclating range
         i = a[m].ord              
         j = a[m+2].ord            
   
      while i <= j                        #sending the range values in another empty
        if c[c.length-1] != i.chr
           c << i.chr
       end
         i+= 1
      end
    end
   end
   
#puts "#{c}"                            #Display's the output

for i in (0...c.length)
  print "#{c[i]}\s"
end
puts "\n"




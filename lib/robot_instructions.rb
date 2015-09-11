class RobotInstructions

 def self.call(start:, home:)
   result = []
   result << start
   current_x = start[0]
   current_y = start[1]
   end_x = home[0]
   end_y = home[1]
   while true
     if current_x == end_x && current_y == end_y
       return result
     end
     if current_x < end_x
       current_x += 1
     elsif current_x > end_x
       current_x -= 1
     end
     if current_y < end_y
       current_y += 1
     elsif current_y > end_y
       current_y -= 1
     end
     result << [current_x,current_y]
   end
 end

end

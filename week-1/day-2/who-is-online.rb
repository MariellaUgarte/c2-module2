friends=[{
  "username"=> 'David',
  "status"=> 'online',
  "last_activity"=> 10
}, {
    "username"=> 'Lucy', 
    "status"=> 'offline',
    "last_activity"=> 22
}, {
    "username"=> 'Bob', 
    "status"=> 'online',
    "last_activity"=> 104
}]
def online(friends)
      statuses = {}
      friends.each {
          |friend| 
          status = friend["status"]
          if status == "online" && friend["last_activity"] > 10 
             status = "away"
          end
          statuses[status] = [] if !statuses.has_key?(status)
          statuses[status] << friend["username"]
          
       }
       
         statuses
    
    
    
    
    
end
puts online(friends)
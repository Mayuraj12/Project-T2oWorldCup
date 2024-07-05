players = {
     "Rohit"= 35
     "Hardik"=28
     "Virat"=34
     "Surya"=29
    }   
#sorting players name by sort_by method

sorted_players = players.sort_by { |key, value| key.length }
return sorted_players
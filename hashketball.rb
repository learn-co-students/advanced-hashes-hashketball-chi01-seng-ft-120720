require 'pry' 
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored (player_name)

final = 0
players_array = []
score = 0
id_array =[]
 game_hash.map{|field, team|
    team.map {|team, players|
    if team = players
      id_array << players
    end
    }
  }
    
  players_array << id_array[2]
  players_array << id_array[5]
  

  players_array.map {|players_id|
    players_id.map{|inner_player|
      inner_player.map{|id, value|
        if value == player_name
          return inner_player[:points]
        end
      }
    }
  }
  
end

def shoe_size (player_name)

final = 0
players_array = []
score = 0
id_array =[]
 game_hash.map{|field, team|
    team.map {|team, players|
    if team = players
      id_array << players
    end
    }
  }
    
  players_array << id_array[2]
  players_array << id_array[5]
  

  players_array.map {|players_id|
    players_id.map{|inner_player|
      inner_player.map{|id, value|
        if value == player_name
          return inner_player[:shoe]
        end
      }
    }
  }
  
end

def team_colors (string)

players_array = []
score = 0
id_array =[]
 game_hash.map {|field, team|
    team.map {|team, players|
    if team = players
      id_array << players
    end
    
    }
  }
  if id_array[0] == string
      p id_array [1]
    elsif id_array[3] == string
    p id_array[4]
  end
    
  
end

def team_names 

id_array =[]
 game_hash.map {|field, team|
    team.map {|team, players|
    if team = players
      id_array << players
    end
    
    }
  }
 return "#{id_array[0]}", "#{id_array[3]}"
 
 end
 
 def player_numbers(team_names)
   
  final_array = []
players_array = []
id_array =[]
 game_hash.map{|field, team|
    team.map {|team, players|
    if team = players
      id_array << players
    end
    }
  }
  
  if team_names == id_array[0]
  players_array << id_array[2]
  elsif team_names == id_array[3]
  players_array << id_array[5]
  end
  
  players_array.map {|players_id|
    players_id.map{|inner_player|
      inner_player.map{|id, value|
     final_array << inner_player[:number]
      }
    }
  }
  return final_array.uniq
end

def player_stats(player_name)
  
  final_array = []
players_array = []
score = 0
id_array =[]
 game_hash.map{|field, team|
    team.map {|team, players|
    if team = players
      id_array << players
    end
    }
  }
    
  players_array << id_array[2]
  players_array << id_array[5]
  

  players_array.map {|players_id|
    players_id.map{|inner_player|
      inner_player.map{|id, value|
        if value == player_name
         return inner_player
        end
      }
    }
  }
end

def big_shoe_rebounds
  
  shoe_array = []
shoe_final = []
players_array = []
biggest_shoe = 0
id_array =[]
big_rebounds =[]

 game_hash.map{|field, team|
    team.map {|team, players|
    if team = players
      id_array << players
    end
    }
  }
    
  players_array << id_array[2]
  players_array << id_array[5]
  

  players_array.map {|players_id|
    players_id.map{|inner_player|
      inner_player.map{|id, value|
      shoe_array << inner_player[:shoe]
      }
    }
  }
  shoe_final = shoe_array.uniq
  biggest_shoe = shoe_final.max
  
  players_array.map {|players_id|
    players_id.map{|inner_player|
      inner_player.map{|id, value|
        if inner_player[:shoe] == biggest_shoe
        big_rebounds << inner_player[:rebounds]
        end
      }
    }
  }
  
 return big_rebounds [0]
  
end

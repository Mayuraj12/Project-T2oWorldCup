module Cricket
#creating class player
    class Player
      attr_accessor :name, :runs, :wicket
  
      def initialize(name)
        @name = name
        @runs = 0
        @wicket = 0
      end
  
      def scoring_runs(runs)
        @runs += runs
      end
  
      def taking_wickets(wicket)
        @wicket += wicket
      end
  
      def statistics
        {
          name: @name,
          runs: @runs,
          wicket: @wicket
        }
      end
  
      def to_s
        "#{@name} has scored #{@runs} and he took #{@wicket} wickets in T20WorldCup."
      end
    end

#creating class tea

    class Team
      attr_accessor :name, :players
  
      MAXIMUM_PLAYERS = 15
  
      def initialize(name)
        @name = name
        @players = []
      end
  
      def add_player(player)
        if @players.size < MAXIMUM_PLAYERS
          @players << player
        else
          puts "players list is full!"
        end
      end
  
      def remove_player(player)
        @players.delete(player)
      end
  
      def team_statistics
        @players.map(&:statistics)
      end
  
      def players_data
        @players.map(&:to_s)
      end
    end
  end
  
puts team.players_data
  
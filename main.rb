# Each Player has a name and score, 
# and should always be initialized with a name and score.

class Player
    def initialize(name, score)
        @name = name # Player 1, Player 2, etc.
        @score = score # 10..300
    end

    # very cool rubyism 
    def to_s
        "Ready #{@name}! Score: #{@score}" 
    end
end


### Main: ### 
players = []

50.times do |i|
    score = rand(10..300)  # set a score 
    name = "Player #{i + 1}"  # set a name
    players << Player.new(name, score)
end

# print player string for each player
players.each_with_index do |player|
    puts player
end

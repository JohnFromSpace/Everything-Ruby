class Player
  attr_accessor :name, :position, :skill_level

  def initialize(name, position, skill_level)
    @name = name
    @position = position
    @skill_level = skill_level
  end

  def display_info
    puts "#{@name} (#{@position}) - Skill Level: #{@skill_level}"
  end
end

class Team
  attr_accessor :name, :players

  def initialize(name)
    @name = name
    @players = []
  end

  def add_player(player)
    @players << player
    puts "Added player #{player.name} to #{@name}"
  end

  def display_team
    puts "Team: #{@name}"
    @players.each { |player| player.display_info }
  end

  def team_skill_level
    @players.map(&:skill_level).sum
  end
end

class Match
  attr_accessor :team1, :team2

  def initialize(team1, team2)
    @team1 = team1
    @team2 = team2
  end

  def play_match
    score_team1 = rand(0..team1.team_skill_level)
    score_team2 = rand(0..team2.team_skill_level)

    puts "#{team1.name} vs #{team2.name}"
    puts "Score: #{team1.name} #{score_team1} - #{score_team2} #{team2.name}"

    if score_team1 > score_team2
      puts "#{team1.name} wins!"
      team1.name
    elsif score_team2 > score_team1
      puts "#{team2.name} wins!"
      team2.name
    else
      puts "It's a draw!"
      nil
    end
  end
end

class Manager
  attr_accessor :name, :team

  def initialize(name)
    @name = name
    @team = nil
  end

  def assign_team(team)
    @team = team
    puts "#{@name} is now managing #{team.name}"
  end

  def sign_player(player)
    if @team
      @team.add_player(player)
    else
      puts "No team assigned to the manager."
    end
  end

  def display_team
    if @team
      @team.display_team
    else
      puts "No team assigned to the manager."
    end
  end
end

class League
  attr_accessor :teams

  def initialize
    @teams = []
    @standings = Hash.new(0)
  end

  def add_team(team)
    @teams << team
    @standings[team.name] = 0
  end

  def play_round
    @teams.combination(2).each do |team1, team2|
      match = Match.new(team1, team2)
      winner = match.play_match
      @standings[winner] += 3 if winner
    end
  end

  def display_standings
    puts "League Standings:"
    @standings.sort_by { |_, points| -points }.each do |team, points|
      puts "#{team}: #{points} points"
    end
  end
end

# Example Usage
# Create teams and players
team1 = Team.new("Team A")
team2 = Team.new("Team B")

player1 = Player.new("Player 1", "Forward", 5)
player2 = Player.new("Player 2", "Midfielder", 4)
player3 = Player.new("Player 3", "Defender", 3)

team1.add_player(player1)
team1.add_player(player2)
team2.add_player(player3)

# Create manager and assign team
manager = Manager.new("Manager 1")
manager.assign_team(team1)
manager.sign_player(Player.new("Player 4", "Goalkeeper", 4))

# Create league and add teams
league = League.new
league.add_team(team1)
league.add_team(team2)

# Play matches and display standings
league.play_round
league.display_standings


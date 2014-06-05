class Player
  attr_reader :first_name, :last_name, :batting_contact, :batting_power, :throwing_velocity, :throwing_accuracy, :fielding, :speed

  def initialize(first_name, last_name, batting_contact, batting_power, throwing_velocity, throwing_accuracy, fielding, speed)
    @first_name = first_name
    @last_name = last_name
    @batting_contact = batting_contact
    @batting_power = batting_power
    @throwing_velocity = throwing_velocity
    @throwing_accuracy = throwing_accuracy
    @fielding = fielding
    @speed = speed
  end

end

miguel = Player.new("Miguel", "Cabrera", 90, 95, 50, 50, 70, 70)
cc = Player.new("CC", "Sabathia", 50, 50, 95, 90, 50, 20)

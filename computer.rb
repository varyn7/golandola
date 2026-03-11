# frozen_string_literal: true

class Computer
  def turn_on
    "turn on the computer"
  end

  def shutdown
    "shutdown the computer"
  end
end

computer = Computer.new
puts computer.turn_on
puts computer.shutdown


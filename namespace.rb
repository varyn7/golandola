# frozen_string_literal: true

module Reverseworld
  def self.puts(text)
    print text.to_s.reverse
  end
end

module Normalworld
  def self.puts(text)
    print text.to_s
  end
end

Reverseworld.puts "o resultado e:"
Normalworld.puts "o resultado e:"

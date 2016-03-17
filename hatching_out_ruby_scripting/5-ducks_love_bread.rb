#!/usr/bin/ruby
Dir.foreach(ARGV[0]) do |a|
  if a.include? "bread"
    puts a
  end
end

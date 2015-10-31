#!/usr/bin/env ruby

$local, $localrev, $remote, $remoterev = STDIN.read.split(" ")

$regex   = /(\AADD)|(\AREMOVE)|(\AHOTFIX)|(\ARENAME)/

puts "Enforcing policies..."
puts "(#{$localrev}) (#{$remoterev})"
  
#Enforcing custom message on commits:
#Commit should start with the following keywords:
  # ADD
  # REMOVE
  # HOTFIX
  # RENAME

def check_message
  new_revs = `git rev-list #{$remoterev}..#{$localrev}`.split("\n")
  new_revs.each do |rev|
    message = `git cat-file commit #{rev} | sed '1,/^$/d'`
    if !$regex.match(message)
      puts "[POLICY] The message of the commit #{rev} is not formatted correctly."
      exit 1
    end
  end
end

check_message

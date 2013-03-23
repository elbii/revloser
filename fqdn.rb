require 'dnsruby'

res = Dnsruby::Recursor.new
res.hints = "198.41.0.4" # A.ROOT-SERVER.NET.

File.readlines('fqdn.txt').each do |line|
  puts "#{line} resolved to #{res.query(line.chomp, "A", "IN")}"
end

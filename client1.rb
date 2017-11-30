require"socket"
client=TCPSocket.open("192.168.159.129",2000)

puts "Enter ypur message:"
message=gets.chomp

rhost=client.peeraddr.last
puts"#{rhost}"
client.write(message)
client.close

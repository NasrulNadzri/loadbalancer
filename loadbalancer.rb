require "socket"

loadbalancer=TCPServer.open("192.168.159.129",2000)

while true
client=loadbalancer.accept

rhost=client.peeraddr.last
puts"#{rhost} connect to loadbalancer"

fromclient=client.gets
puts "message from client: #{fromclient}"

if fromclient=="boy"
sockettoserver1=TCPSocket.open("192.168.190.128",3000)
sockettoserver1.write(fromclient)
sockettoserver1.close

elsif fromclient=="girl"
sockettoserver2=TCPSocket.open("192.168.190.132",4000)
sockettoserver2.write(fromclient)
sockettoserver2.close

else
put"Error!!"
end
end

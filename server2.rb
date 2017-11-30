require"socket"

while true
server=TCPServer.open("192.168.190.132",4000)
loadbalancer=server.accept
puts loadbalancer.gets
server.close
end

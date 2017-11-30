import java.io.*;
import java.net.*;

public class loadbalancer{
	public static void main(String []args)throws IOException{
	ServerSocket s1=new ServerSocket(4394);
	while(true){
		Socket connectionsocket=s1.accept();
		BufferedReader messagefromclient=new BufferedReader(new InputStreamReader(connectionsocket.getInputStream
()));
		String clientsentence=messagefromclient.readLine();

		if(clientsentence.contains("Alpha")){
		Socket server=new Socket("192.168.190.128",2345);
		DataOutputStream outtoserver=new DataOutputStream(server.getOutputStream());
		outtoserver.writeBytes(clientsentence+"\n");
		server.close();
		}
		
		else if(clientsentence.contains("Beta")){
		Socket server2=new Socket ("192.168.190.132",4646);
		DataOutputStream outtoserver2=new DataOutputStream(server2.getOutputStream());
		server2.close();
		}
		else{System.out.println("Error !!!");}
		}
		
	}
}


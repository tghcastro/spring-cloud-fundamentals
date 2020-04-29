# [Pluralsight Spring Cloud Fundamentals](https://app.pluralsight.com/library/courses/spring-cloud-fundamentals)

## Running

	Start projects in the following order: 

		1. Dicovery Server 
		2. Config Server
		3. Service (X instances)
		4. Client
		5. Config-Client-App

## About repository projects

### Dicovery-Server: 

	http://localhost:10000 (Eureka Dashboard)

### Config-Server: 

	GitHub configuration repository: https://github.com/tghcastro/scf-config-repository

	http://localhost:8888/config-client-app/default
	http://localhost:8888/config-client-app.properties

### Gateway-Server: 

	GitHub configuration repository: https://github.com/tghcastro/scf-config-repository

	http://localhost:8888/config-client-app/default
	http://localhost:8888/config-client-app.properties



### Service: 

	Add the following properties when starting Services instances
	
	`-Dservice.instance.name=instance1 -Dserver.port=10001`
	`-Dservice.instance.name=instance2 -Dserver.port=10002`
	...
	
### Client: 

	Client app will display wich Service instance it is accessing
	
	http://localhost:9090
	
### Config-Client-App: 

	http://localhost:10003/ (Client app will display the configurations from the Config-Server)
	http://localhost:10003/actuator/refresh
	
### HelloService and GoodbyeService

	Add the following properties when starting Services instances
	
	Hello: 
	
	`-Dapplication.instance.name=instance1 -Dserver.port=1111`
	`-Dapplication.instance.name=instance2 -Dserver.port=1112`
	
	Goodbye: 
	
	`-Dapplication.instance.name=instance1 -Dserver.port=2222`
	`-Dapplication.instance.name=instance2 -Dserver.port=2223`
	
	http://localhost:10004/hello (alterenates between instance1 and 2)
	http://localhost:10004/goodbye (alterenates between instance1 and 2)
	


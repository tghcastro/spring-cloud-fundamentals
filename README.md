# [Pluralsight Spring Cloud Fundamentals](https://app.pluralsight.com/library/courses/spring-cloud-fundamentals)

## Running

	Start projects in the following order: 

		1. Dicovery Server 
		2. Config Server
		3. Service (X instances)
		4. Client

## About repository projects

### Dicovery-Server: 

	http://localhost:10000 (Eureka Dashboard)

### Config-Server: 

	[GitHub configuration repository](https://github.com/tghcastro/scf-config-repository)

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

	Client app will display the configurations [from GitHub repository](https://github.com/tghcastro/scf-config-repository)
	
	http://localhost:10003/
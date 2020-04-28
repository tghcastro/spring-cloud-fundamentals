# [Pluralsight Spring Cloud Fundamentals](https://app.pluralsight.com/library/courses/spring-cloud-fundamentals)

## Running

	Start projects in the following order: 

		1. Dicovery Server 
		2. Config Server
		3. Service (X instances)
		4. Client

## About projects

### Dicovery-Server: 

	http://localhost:10000 (Eureka Dashboard)

### Config-Server: 

	http://localhost:8888/config-client-app/default

	### Service: 

	Add the following properties when starting Services instances
	
	`-Dservice.instance.name=instance1 -Dserver.port=10001`
	
### Service: 

	Add the following properties when starting Services instances
	
	`-Dservice.instance.name=instance1 -Dserver.port=10001`
	
### Client: 

	Client app will display wich Service instance it is accessing
	
	http://localhost:8080
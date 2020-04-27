

cd discovery-server

echo "building registry"
mvn clean install -DskipTests >> ..\build.log

echo "starting registry"
Invoke-Command -ScriptBlock { java -jar .\target\spg-cloud-fundamentals-discovery-server-0.0.1-SNAPSHOT.jar } -AsJob -JobName registry 

cd ..

cd service

echo "building service"
mvn clean install -DskipTests >> ..\build.log

echo "starting service"
Invoke-Command -ScriptBlock { java -jar .\target\spg-cloud-fundamentals-service-0.0.1-SNAPSHOT.jar } -AsJob 

cd ..

cd client

echo "building client"
mvn clean install -DskipTests >> ..\build.log

echo "starting client"
Invoke-Command -ScriptBlock { java -jar .\target\spg-cloud-fundamentals-client-0.0.1-SNAPSHOT.jar }

cd ..

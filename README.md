# pets-app for Weekend DevOps training (15-Feb-2020)

### Maven command to create java web project

```
  mvn archetype:generate 
	-DgroupId=in.javahome
	-DartifactId=pets-app
	-DarchetypeArtifactId=maven-archetype-webapp
	-DinteractiveMode=false

```

### Install Nexus3 on Linux

```
   cd /opt/
   sudo wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
   sudo tar -xf latest-unix.tar.gz
   sudo mv nexus-3.21.1-01/ nexus3
   sudo chown -R ec2-user:ec2-user nexus3/ sonatype-work/
```

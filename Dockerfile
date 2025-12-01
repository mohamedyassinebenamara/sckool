FROM wodby/openjdk:17-alpine
#expose le port de l applicvation spring  boot
EXPOSE 8089
#Ajoute le livrable spring boot dans l image
ADD http://192.168.50.4:8081/repository/maven-releases/tn/m104/rh/sckool/1.0.0/sckool-1.0.0.jar .
#commande d'execution de l application spring boot
ENTRYPOINT ["java", "-jar", "/sckool-1.0.0.jar"]

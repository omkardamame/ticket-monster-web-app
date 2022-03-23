#ticket-monster-web-app

I have developed a Docker container for this simple web app from [Ansible examples](https://github.com/ansible/ansible-examples).
You can find the original path of war file from [here](https://github.com/ansible/ansible-examples/blob/master/jboss-standalone/roles/java-app/files/ticket-monster.war).

You can pull the image from below command:

For Docker:
```
docker pull omkardamame/ticket-monster-web-app:1.0.0
```

For Quay.io
```
docker pull quay.io/omkardamame/ticket-monster-web-app:1.0.0
```

You can run the container using following command:
```
docker run -dit --name <image_name> -v <volume_name>:/usr/local/tomcat/webapps -p 9090:8080 ticket-monster-web-app:1.0.0
```

Replace <image_name> <volume_name> with your own choosen names.

In order to access the web app, just type ```Your_IP_Address_Here:<container_port>/ticket-monster``` in browser.

You can generate podman service for your container by using this command:
```
podman generate systemd --name <image_name> --files
```

You need to move that service file which got generated to /etc/systemd/system/ path.

In order to enable the service for reboots, use follwing command:
```
systemctl enable <image_name>.service
```

To start/stop and view the status of the service, simply replace the word "enable" from above command.

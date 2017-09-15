# java-mariadb-standalone-server

Simple mariadb standalone server which allows shutdown via web api call

# Feature

* Standalone redis server that can run without additional installation on Windows, Linux and MacOS.
* Allow the database to run the /resources/db-init.sql (which by default create a database named "spring_boot_slingshot") on startup
* Allow shut down of the redis server remotely via web api call

# Usage
copy the redis-standalone.jar to your directory and run the following command:

```bash
java -jar mariadb-standalone.jar
```

This will start the redis server at port 3066 and start another web server at port 3088.

To check whether the mariadb server is alive, call the following url:

http://localhost:3088/ping

To kill the mariadb server remotely, just call the following url:

http://localhost:3088/kill

# Note
In case you want to modify the behavior the mariadb server (e.g, overwritting the /resources/db-init.sql) and want to rebuild, you can run the make.ps1 on Windows
or make.sh on Linux or Mac.





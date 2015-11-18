  
  
# Sample Java EE 7 - Expression Language 3.0


This application shows how to use some of the new EL 3.0 (Expression Language) functions. 

Examples are provided for using:

- Lambda expressions 
- Concatenation
- New operators. 

In addition, it provides a simple sample of a stand-alone servlet that shows EL in use without JavaServer Pages (JSP).

## Getting Started

Browse the code to see what it does, or build and run it yourself!


## Running in Eclipse

1. Download and install [Eclipse with the WebSphere Developer Tools](https://developer.ibm.com/wasdev/downloads/liberty-profile-using-eclipse/).
2. Create a new Liberty Profile Server.
3. Clone this repository.
4. Import the sample into Eclipse using *File -> Import -> Maven -> Existing Maven Projects* option.
5. Deploy the sample into Liberty server. Right click on the project and select *Run As -> Run on Server* option. Find and select the Liberty profile server and press *Finish*.
6. Go to: [http://localhost:9080/sample.javaee7.el30/](http://localhost:9080/sample.javaee7.el30/)

## Running with Maven

This project can be build with [Apache Maven](http://maven.apache.org/). The project uses [Liberty Maven Plug-in][] to automatically download and install Liberty profile runtime from the [Liberty repository](https://developer.ibm.com/wasdev/downloads/). Liberty Maven Plug-in is also used to create, configure, and run the application on the Liberty server. 

Use the following steps to run the application with Maven:

1. Execute full Maven build. This will cause Liberty Maven Plug-in to download and install Liberty profile server.
    ```bash
    $ mvn clean install
    ```

2. To run the server with the WebSocket application execute:
    ```bash
    $ mvn liberty:run-server
    ```

Once the server is running, the application will be available under [http://localhost:9080/sample.javaee7.el30/](http://localhost:9080/sample.javaee7.el30/).

## Deploying to Bluemix

Click the button below to deploy your own copy of this application to [Bluemix](https://bluemix.net).

[![Deploy to Bluemix](https://bluemix.net/deploy/button.png)](https://bluemix.net/deploy?repository=https://github.com/WASdev/sample.javaee7.el30)

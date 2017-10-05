

# Sample Java EE 7 - Expression Language 3.0 [![Build Status](https://travis-ci.org/WASdev/sample.javaee7.el30.svg?branch=master)](https://travis-ci.org/WASdev/sample.javaee7.el30)


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
2. Clone this repository.
3. Import the sample into Eclipse using *File -> Import -> Maven -> Existing Maven Projects* option.
4. Right click on the project and select *Run As -> Run on Server* option. Find and select the Liberty profile server and press *Finish*.
5. Go to: [http://localhost:9080/sample.javaee7.el30/](http://localhost:9080/sample.javaee7.el30/)

### Tips
After step 3, Eclipse may detect JSP EL (Expression Language) syntax errors.  You can ignore these
errors and disable the JSP validator for this project. To disable JSP validation in Eclipse:
1. Right-click the project and select *Properites -> Validation*.
2. Check the *Enable project specific settings* checkbox.
3. Uncheck the *JSP syntax validator* checkboxes.
3. Click *OK*.

## Running with Maven

This project can be built with [Apache Maven](http://maven.apache.org/). The project uses [Liberty Maven Plug-in](https://github.com/WASdev/ci.maven) to automatically download and install Liberty profile runtime from the [Liberty repository](https://developer.ibm.com/wasdev/downloads/). Liberty Maven Plug-in is also used to create, configure, and run the application on the Liberty server.

Use the following steps to run the application with Maven:

1. Execute full Maven build. This will cause Liberty Maven Plug-in to download and install Liberty profile server.
    ```bash
    $ mvn clean install
    ```

2. To run the server with the EL 3.0 application execute:
    ```bash
    $ mvn liberty:run-server
    ```

Once the server is running, the application will be available under [http://localhost:9080/sample.javaee7.el30/](http://localhost:9080/sample.javaee7.el30/).

## Deploying to Bluemix

Click the button below to deploy your own copy of this application to [Bluemix](https://bluemix.net).

[![Deploy to Bluemix](https://bluemix.net/deploy/button.png)](https://bluemix.net/deploy?repository=https://github.com/WASdev/sample.javaee7.el30)

Once the application is deployed and running in Bluemix, it will be available under
[http://MYAPPNAME.mybluemix.net/sample.javaee7.el30/](http://MYAPPNAME.mybluemix.net/sample.javaee7.el30/).

## Running with Gradle

This project can also be built and run with Gradle. The provided `build.gradle` file applies the Liberty Gradle Plug-in and is configured to automatically download and install Liberty with Java EE Web Profile 7 runtime from Maven Central. The Liberty Gradle Plug-in has built-in tasks that can be used to create, configure, and run the application on the Liberty server.

Use the following steps to run the application with Gradle:

1. Execute the full Gradle build. The Liberty Gradle Plug-in will download and install the Liberty server.
    ```bash
    $ gradle clean build
    ```

2. To start the server with the Servlet sample execute:
    ```bash
    $ gradle libertyStart
    ```

    Alternatively, execute the run command:
    ```bash
    $ gradle libertyRun --no-daemon
    ```

Once the server has started, the application will be available under [http://localhost:9080/sample.javaee7.el30](http://localhost:9080/sample.javaee7.el30).

3. To stop the server, execute:
    ```bash
    $ gradle libertyStop
    ```  

Please refer to the [ci.gradle](http://github.com/WASDev/ci.gradle) repository for documentation about using the Liberty Gradle Plug-in.

## Notice

© Copyright IBM Corporation 2015, 2017.

# License

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
````

[Liberty Maven Plug-in]: https://github.com/WASdev/ci.maven

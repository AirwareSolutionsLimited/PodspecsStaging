
# Module Airware Services Library

Library installation and updates require an access token. 
Use the [contact form](https://airware.aero/contact/) to request a token. 

## Installation for Android

### Add your scoped access token to git credentials to access the source and packages

Store the tokens in whichever manner fits your practices for checking out code and building on CI; 
e.g. environment variables or secure files or local.properties

```
git config --global credential.https://github.com/AirwareSolutionsLimited.username <YOUR_AIRWARE_GPR_USER>
git config --global credential.https://github.com/AirwareSolutionsLimited.password <YOUR_AIRWARE_GPR_PASSWORD>
```

### Checkout the sample app source code
```
git clone https://github.com/AirwareSolutionsLimited/AirwareServicesAndroid
```

### Update the gradle.properties of the sample project
```
# Airware Github Package Repository token
AIRWARE_GPR_USER=<YOUR_AIRWARE_GPR_USER> 
AIRWARE_GPR_TOKEN=<YOUR_AIRWARE_GPR_TOKEN>
```
Build and run the AirwareServicesAndroid project

## Gradle configuration in your own project

### Add the Airware Repository and Library to your gradle file

Add the following lines to your project's build.gradle or settings.gradle file
```gradle
repositories {
    maven {
        url = uri("https://maven.pkg.github.com/airwaresolutionslimited/serviceslibraryandroid")
        credentials {
            // === GITHUB PACKAGE REPOSITORY USERNAME AND TOKEN PROVIDED BY AIRWARE ===
            username = (project.findProperty("AIRWARE_GPR_USER") ?: System.getenv("AIRWARE_GPR_USER")).toString()
            password = (project.findProperty("AIRWARE_GPR_TOKEN") ?: System.getenv("AIRWARE_GPR_TOKEN")).toString()
        }
    }
}

dependencies {  
    implementation("com.airware:services-library-android:1.0.0")
}
```

# Use the library in your Android project
To start using the library in your Android project, add
**import** com.airware.services.AirwareServices

# Sample app
Source code is provided for sample apps for [iOS (Swift)](https://github.com/AirwareSolutionsLimited/AirwareServicesIos) and [Android (Kotlin)](https://github.com/AirwareSolutionsLimited/AirwareServicesAndroid) which demonstrate use of the library.

# Documentation
Documentation for the Library API is available with the source and online [AirwareServicesLibrary (airwaresolutionslimited.github.io)](https://airwaresolutionslimited.github.io/AirwareServicesLibrary/)


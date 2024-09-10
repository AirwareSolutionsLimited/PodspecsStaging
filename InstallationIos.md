# Module Airware Services Library

Library installation and updates require an access token. 
Use the [contact form](https://airware.aero/contact/) to request a token. 

## Installation for iOS


### Add your scoped access token to git credentials to access the source and library files

Store the tokens in whichever manner fits your practices for checking out code and building on CI; 
e.g. environment variables or secure files.

```
git config --global credential.https://github.com/AirwareSolutionsLimited.username <YOUR_AIRWARE_GPR_USER>
git config --global credential.https://github.com/AirwareSolutionsLimited.password <YOUR_AIRWARE_GPR_PASSWORD>
```



### Checkout the sample app source code

```
git clone https://github.com/AirwareSolutionsLimited/AirwareServicesIos
```

### Update the podfiles in the sample app
```
cd AirwareServicesIos
pod install --repo-update
pod update AirwareServicesLibrary
```

Then build and run the Sample.xcworkspace project in XCode 15+

## Swift (Swift Package Manager) installation in your own project

Add in XCode by going to `File` -> `Add Packages` -> `Add Package Dependency...` and enter the URL:
```
https://github.com/AirwareSolutionsLimited/AirwareServicesLibrary.git
```

The xcodebuild command and Xcode will try to authenticate using a GitHub access token stored in the keychain. (This is because the library is distributed as a binary framework).

To download the binary framework, you'll need to put a Github access token to the keychain.
In XCode, you can add your <YOUR_AIRWARE_GPR_USER> and <YOUR_AIRWARE_GPR_PASSWORD> at the time that you add the package to your project.

On your CI system, add the credentials to the keychain as follows:
```
security add-internet-password -a "<YOUR_AIRWARE_GPR_USER>" -s "github.com" -r htps -w "<YOUR_AIRWARE_GPR_PASSWORD>" -T "$(xcode-select -p)/usr/bin/xcodebuild" -T "/usr/bin/xcodebuild" -U login.keychain
security set-internet-password-partition-list -S apple-tool:,apple: -s "github.com" login.keychain
```  

## Swift (CocoaPods) installation in your own project


### Add the Airware Repository and Library to your Podfile

Add the following lines to your project's Podfile.
```rb
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/AirwareSolutionsLimited/Podspecs.git'

platform :ios, '13.1'
target 'Sample' do
  use_frameworks!
  pod "AirwareServicesLibrary"
end
```

Run the following commands to install the Pod.
```batch
pod install --repo-update
pod update AirwareServicesLibrary
```

# Use the library in your iOS project

To start using the library in your iOS Swift project, add
**import** AirwareServicesLibrary

# Sample app
Source code is provided for sample apps for [iOS (Swift)](https://github.com/AirwareSolutionsLimited/AirwareServicesIos) and [Android (Kotlin)](https://github.com/AirwareSolutionsLimited/AirwareServicesAndroid) which demonstrate use of the library.

# Documentation
Documentation for the Library API is available with the source and online [AirwareServicesLibrary (airwaresolutionslimited.github.io)](https://airwaresolutionslimited.github.io/AirwareServicesLibrary/)


# Module Airware Services Library

Library installation and updates require an access token. 
Use the [contact form](https://airware.aero/contact/) to request a token. 

## Installation for iOS


### Add your scoped access token to git credentials to access the source and library files

*NOTE* Access for download and update of the libraries and sample code is via user and password tokens.

```
For all access via git (all sample source code, and the library iOS pod and swift package frameworks), use <YOUR_AIRWARE_GPR_PASSWORD>
<YOUR_AIRWARE_GPR_USER>
<YOUR_AIRWARE_GPR_PASSWORD>

To access the Android maven packages (gradle) use <YOUR_AIRWARE_GPR_TOKEN>
<YOUR_AIRWARE_GPR_USER>
<YOUR_AIRWARE_GPR_TOKEN>
```

Store the tokens as required for how you manage our libraries and updates. 

If you check out the  out code and building on CI; 
e.g. environment variables or secure files.

```
git config --global credential.https://github.com/AirwareSolutionsLimited.username <YOUR_AIRWARE_GPR_USER>
git config --global credential.https://github.com/AirwareSolutionsLimited.password <YOUR_AIRWARE_GPR_PASSWORD>
```

### Checkout the sample app source code

```
git clone https://github.com/AirwareSolutionsLimited/AirwareServicesSampleCode
```

For local developer systems, it is recommended you checkout using the Git CLI initially.

If you are prompted at the commandline for your password, paste in `<YOUR_AIRWARE_GPR_PASSWORD>` from above.

If you are having issues checking out, or would like to use sourcetree or another VCS, edit the `~/.gitconfig` file in your home folder instead.

Your `~/.gitconfig` file should contain the entries:
```
[credential "https://github.com/AirwareSolutionsLimited"]
	username = <YOUR_AIRWARE_GPR_USER>
	helper = "!echo password=<YOUR_AIRWARE_GPR_PASSWORD>; echo"
	password = <YOUR_AIRWARE_GPR_PASSWORD>
```


### CocoaPods Sample - update the podfiles in the sample app

```
cd AirwareServicesSampleCode/IosSampleCode
pod install --repo-update
pod update && pod install
```

Then build and run the Sample-Cocoapods.xcworkspace project in XCode 16+

## Swift (CocoaPods) installation in your own project

### Add the Airware Repository and Library to your Podfile

Add the following lines to your project's Podfile for the frameworks you use
```rb
source 'https://github.com/AirwareSolutionsLimited/Podspecs.git'

platform :ios, '14'
target 'YourApplicationTarget' do
  use_frameworks!
  pod "AirwareServicesLibrary"
end
```

Run the following commands to install the Pod.
```batch
pod install --repo-update
pod update && pod install
```

Or run the following commands to update the Pods to the latest version.
```batch
pod repo update && pod update
```

## Swift Package Manager installation

Open your project in XCode, and choose File -> Add Packages -> Add Package Dependency and specify https://github.com/AirwareSolutionsLimited/AirwareServicesSampleCode as the url


If you set the credentials in the previous steps, you should not be prompted for a username and password; however some SPM configurations required an additional ~/.netrc file entry.

If prompted via XCode, set these as the provided <YOUR_AIRWARE_GPR_USER> and <YOUR_AIRWARE_GPR_PASSWORD>.

Add the AirwareServicesLibrary package to the project


# Use the library in your iOS project

To start using the library in your iOS Swift project, add imports for the frameworks you use.

**import** AirwareServicesLibrary.AirwareLocationServices

**import** AirwareServicesLibrary.AirwareInfrastructureServices

**import** AirwareServicesLibrary.AirwareIdentityServices


# Sample app
Source code is provided for sample apps for [iOS (Swift) and Android (Kotlin)](https://github.com/AirwareSolutionsLimited/AirwareServicesSampleCode) which demonstrate use of the library.

# Documentation
Documentation for the Library API is available with the source and online [AirwareServicesLibrary (airwaresolutionslimited.github.io)](https://airwaresolutionslimited.github.io/AirwareServicesLibrary/)


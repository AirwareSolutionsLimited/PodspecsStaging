# Module Airware Services Library

Library installation and updates require an access token. 
Use the [contact form](https://airware.aero/contact/) to request a token. 

## Installation for iOS


### Add your scoped access token to git credentials to access the source and library files

*NOTE* 
Access is via user and password tokens.
```
For all access via git (all sample source code, and the library iOS pod and swift package frameworks), use <YOUR_AIRWARE_GPR_PASSWORD>
<YOUR_AIRWARE_GPR_USER>
<YOUR_AIRWARE_GPR_PASSWORD>

To access the Android maven packages (gradle) use <YOUR_AIRWARE_GPR_TOKEN>
<YOUR_AIRWARE_GPR_USER>
<YOUR_AIRWARE_GPR_TOKEN>
```

Store the tokens in whichever manner fits your practices for checking out code and building on CI; 
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

If you are having issues checking out, or would like to use sourcetree or other VCS, edit the `~/.gitconfig` file in your home folder.

Your `~/.gitconfig` file should contain the entries:
```
[filter "lfs"]
	clean = git-lfs clean -- %f
	smudge = git-lfs smudge -- %f
	process = git-lfs filter-process
	required = true
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

Then build and run the Sample-Cocoapods.xcworkspace project in XCode 15+

## Swift (CocoaPods) installation in your own project

### Add the Airware Repository and Library to your Podfile

Add the following lines to your project's Podfile for the frameworks you use
```rb
source 'https://cdn.cocoapods.org'
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

Or run the following commands to update the Pods.
```batch
pod repo update && pod update
```

# Use the library in your iOS project

To start using the library in your iOS Swift project, add imports for the frameworks you use.

**import** AirwareServicesLibrary.AirwareLocationServices

**import** AirwareServicesLibrary.AirwareInfrastructureServices

**import** AirwareServicesLibrary.AirwareIdentityServices

## Swift Package Manager packages installation

As of February 2025, Airware frameworks use the Git LFS filesystem to store large objects.

This means that until https://github.com/swiftlang/swift-package-manager/issues/8233?t is resolved, Swift Packages need to be manually downloaded outside of XCode and installed using 
`Add Local`.

The Airware Services Library packages should be checked out using the git command line with git-lfs pre-installed.

If you don't already have git lfs installed, install on MacOSX using brew:
```
brew install git-lfs
git lfs install
```

Next clone the Airware Services Libraries from the main branch into a folder that is relative to your own source code.

`git clone https://github.com/AirwareSolutionsLimited/AirwareServicesLibrary.git`

Open your project in XCode, and choose `File` -> `Add Packages` -> `Add Package Dependency...` 

Choose `Add Local` from the bottom of the dialog and browse to the folder where you downloaded the Airware Services Library.

Add the AirwareInfrastructureServices package to any projects using Infrastructure.

Add the AirwareLocationServices package to projects requiring Location Services.

Add the AirwareCodeScanner and AirwareIdentityServices package to projects requiring Identity Services.

# Sample app
Source code is provided for sample apps for [iOS (Swift) and Android (Kotlin)](https://github.com/AirwareSolutionsLimited/AirwareServicesSampleCode) which demonstrate use of the library.

# Documentation
Documentation for the Library API is available with the source and online [AirwareServicesLibrary (airwaresolutionslimited.github.io)](https://airwaresolutionslimited.github.io/AirwareServicesLibrary/)


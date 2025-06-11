# Service Migration Notes

- Migration from Airware Services Library 1.0.3 to Location Services
- Migration from AirwareApplianceApi 1.4.6 to Infrastructure Services

## Android Code Migration

- Package source uri is unchanged at https://maven.pkg.github.com/airwaresolutionslimited/airwareserviceslibrary

- Sample code is moved to https://github.com/AirwareSolutionsLimited/AirwareServicesSampleCode

### Location Services

**build.gradle**: com.airware.services:services-library-android  -> "com.airware:core-services-android" + "com.airware:location-services-android"

**namespace**: import com.airware.services.AirwareServices -> import com.airware.services.locationservices.AirwareLocationService/

**location class:** AirwareServices -> AirwareLocationService

**journeys class:** AirwareServices -> (unchanged, in core package AirwareServices)

**initialization**: AirwareServices.initialize(context, configuration) -> AirwareLocationService.initialize(context, configuration)

### Infrastructure Services (Bagtag, BoardingPass and Scale Appliance Connection)

**build.gradle**: com.airware:appliance-services-android-api  -> "com.airware:core-services-android" + "com.airware:infrastructure-services-android"

**namespace**: import com.airware.airwareapplianceapi.AirwarePassengerAPI -> import com.airware.services.AirwareInfrastructureService

**class:** AirwarePassengerAPI -> AirwareInfrastructureService

**initialization**: AirwarePassengerAPI(adapter, accountSigningKey, serviceSubscriptionKey, application) -> AirwareInfrastructureService.initialize(context, accountSigningkey, subscriptionKey)

**All callback enums**
SCREAMING_SNAKE_CASE -> PascalCase
eg. ConnectionStatus.CONNECTION_SUCCESSFUL -> ConnectionStatus.ConnectionSuccessful

**AirwarePrintData Class**
Modified for type safety to 
airwarePrintData.**add**(key, stringvalue)
airwarePrintData.**addData**(key, bytearray)

---
## iOS Sqlite Linking Issues

There are reports of issues with sqlite static linking after a change in XCode 16. If you encounter this, contact us for assistance.

## iOS Code Migration

Podspecs source is unchanged at 'https://github.com/AirwareSolutionsLimited/Podspecs.git'

Sample code is moved from https://github.com/AirwareSolutionsLimited/AirwareServicesIos to https://github.com/AirwareSolutionsLimited/AirwareServicesSampleCode

### Location Services (BaggageProcessingArea detection)

**Podfile**: pod AirwareServicesLibrary

**import** AirwareServicesLibrary -> **import** AirwareServicesLibrary.AirwareLocationServices

**class** AirwareServices -> AirwareLocationService

**initialization** AirwareServices().initialize(context, configuration) -> AirwareLocationService().initialize(configuration)


### Infrastructure Services (Bagtag, BoardingPass and Scale Applicance Connection)

**pod or xcframework** AirwareApplianceApi -> AirwareServicesLibrary

**import** AirwareApplianceApi -> **import** AirwareServicesLibrary.AirwareInfrastructureServices

**class** AirwarePassengerApi -> AirwareInfrastructureService

**initialization** AirwarePassengerApi(accountSigningKey, serviceSubscriptionKey) -> AirwareInfrastructureService().initialize(accountSigningKey, serviceSubscriptionKey)

**Method names, enums and parameters**
- Function calls, callbacks, enums, and parameter order are now identical to Android
- This is to allow for ease of implementation in ReactNative and other cross-platform environments, and the documentation to match where appropriate

**All callback enums**
- swiftCase -> PascalCase
- eg. ConnectionStatus.connectionSuccessful -> ConnectionStatus.ConnectionSuccessful

**Method names and parameters**
- StartScale -> **s**tartScale, StopScale -> **s**topScale
- StartBagTagPrinter -> startBagTagPrinter
- StartMultiPurposePrinter -> startMultipurposePrinter
- Parameter order changed to (data, callback) e.g. -> startMultipurposePrinter(data, callback), startBagTagPrinter(data, callback)

**AirwarePrintData Class**
Modified for type safety to 
- airwarePrintData.**add**(key, stringvalue)
- airwarePrintData.**addData**(key, bytearray)

*The existing method of adding data elements to an array is still fine, refer to the sample code InfrastructureViewModel.swift generateBagtagPrintDataCompat() and generateBagtagPrintData to compare the approaches.*

var airwarePrintDataElements = [AirwareDataElement]()

airwarePrintDataElements.**append**(AirwareDataElement(key: 0, value: "AirwareTestTag3".data(using: .utf8)!))




Pod::Spec.new do |spec|
    spec.name                     = 'AirwareCoreServices'
    spec.version                  = '0.0.1'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :git => "https://github.com/AirwareSolutionsLimited/AirwareServicesStaging.git", :tag => "AirwareCoreServices-0.0.1" }
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareCoreServices Library'
    spec.vendored_frameworks      = 'AirwareCoreServices.xcframework'
    spec.libraries                = 'c++'
    spec.ios.deployment_target    = '13.5'
                
                
                
                
                
    spec.resource_bundles = {'KotlinMultiplatformPrivacyManifest' => ['PrivacyInfo.xcprivacy']}
end
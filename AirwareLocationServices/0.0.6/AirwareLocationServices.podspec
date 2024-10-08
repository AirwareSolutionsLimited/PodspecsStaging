Pod::Spec.new do |spec|
    spec.name                     = 'AirwareLocationServices'
    spec.version                  = '0.0.6'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :git => "https://github.com/AirwareSolutionsLimited/AirwareServicesStaging.git", :tag => "AirwareLocationServices-0.0.6" }
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareLocationServices Library'
                
    spec.libraries                = 'c++'
    spec.ios.deployment_target    = '13.5'
                
                
                
                
                
    spec.vendored_frameworks = "AirwareLocationServices/AirwareLocationServices.xcframework"
    spec.resource_bundles = {'KotlinMultiplatformPrivacyManifest' => ['PrivacyInfo.xcprivacy']}
end
Pod::Spec.new do |spec|
    spec.name                     = 'AirwareInfrastructureServices'
    spec.version = '1.0.19'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :http=> ''}
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareInfrastructureServices Library'
    spec.ios.deployment_target    = '14'
    spec.swift_version = '6.0'
    spec.dependency 'AirwareServicesLibrary', '1.0.19'
end
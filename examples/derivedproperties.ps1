# Call this script with -properties @{'version_build' = '1'}

Properties {
  $version_major = "1.0.0"
  $version_build = "0"
  $version_in_properties = "$version_major.$version_build"
}

DerivedProperties {
  $version = "$version_major.$version_build"
}

Task default -depends ShowVersion

Task ShowVersion {
  write-host "version_in_properties: $version_in_properties, version: $version"
}
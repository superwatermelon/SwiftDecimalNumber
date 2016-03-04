Pod::Spec.new do |s|
  s.name             = "SwiftDecimalNumber"
  s.version          = "0.1.0"
  s.summary          = "Swift extensions for NSDecimalNumber."
  s.description      = <<-DESC
                       It provides an expressive way of interfacing with
                       the NSDecimalNumber type instead of using the verbose
                       built in methods. Also adds methods such as min and
                       max.
                       DESC
  s.homepage         = "https://github.com/superwatermelon/SwiftDecimalNumber"
  s.license          = 'MIT'
  s.author           = { "Stuart Wakefield" => "stuart@superwatermelon.com" }
  s.source           = { :git => "https://github.com/superwatermelon/SwiftDecimalNumber.git", :tag => s.version.to_s }
  s.platform         = :ios, '9.2'
  s.requires_arc     = true
  s.source_files     = 'SwiftDecimalNumber/**/*'
end

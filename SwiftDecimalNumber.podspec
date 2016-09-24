Pod::Spec.new do |s|

  s.name = "SwiftDecimalNumber"

  s.version = "1.0.2-alpha"

  s.summary = "Swift extensions for NSDecimalNumber."

  s.description = <<-DESC
  SwiftDecimalNumber provides an expressive way of interfacing with
  the NSDecimalNumber type. Also adds methods such as min and
  max.
  DESC

  s.homepage = "https://github.com/superwatermelon/SwiftDecimalNumber"

  s.license = 'MIT'

  s.author = { "Stuart Wakefield" => "stuart@superwatermelon.com" }

  s.source = {
    :git => "https://github.com/superwatermelon/SwiftDecimalNumber.git",
    :tag => s.version.to_s
  }

  s.platform = :ios, '9.3'

  s.source_files = 'SwiftDecimalNumber/**/*'

end

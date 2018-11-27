

Pod::Spec.new do |s|

  s.name         = "FZBaseLibiary"
  s.version      = "0.0.11"
  s.summary      = "A short description of FZBaseLibiary."

  s.description  = <<-DESC
                        基础库创建
                   DESC

  s.homepage     = "https://github.com/wufuzeng/FZBaseLibiary"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "wufuzeng" => "wufuzeng_lucky@sina.com" }


  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/wufuzeng/FZBaseLibiary.git", :tag => "#{s.version}" }

  s.source_files  = "Base**/*.{h,m}", "Category/**/*.{h,m}"
  #s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # s.framework  = "SomeFramework"
  s.frameworks = "Foundation", "UIKit","CoreGraphics"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end

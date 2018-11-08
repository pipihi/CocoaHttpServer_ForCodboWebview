# pod lib lint --allow-warnings

Pod::Spec.new do |s|
  s.name             = 'iOSHTTPServer'
  s.version          = '2.5.10'
  s.summary          = 'Edit from CocoaHTTPServer2 only for iOS/CodboWebview.'

  s.description      = <<-DESC
  Edit from CocoaHTTPServer2 only for iOS/CodboWebview;
  Origin seen https://github.com/huangjimmy/CocoaHTTPServer
                       DESC

  s.homepage         = 'https://github.com/pipihi/CocoaHttpServer_ForCodboWebview'
  s.license          = { :type => 'BSD', :file => 'LICENSE' }
  s.author           = { 'Robbie Hanson' => 'cocoahttpserver@googlegroups.com' }

  s.source           = { :git => 'https://github.com/pipihi/CocoaHttpServer_ForCodboWebview.git', :tag => s.version.to_s }
  s.source_files = 'iOSHTTPServer/Classes/**/*'
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.libraries = 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.frameworks = 'CFNetwork', 'Security'

end

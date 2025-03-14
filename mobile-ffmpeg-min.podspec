Pod::Spec.new do |s|  
    s.name              = "mobile-ffmpeg-min"
    s.version           = "4.4.nd"
    s.summary           = "Mobile FFmpeg Min Static Framework"
    s.description       = <<-DESC
    Includes FFmpeg v4.4 without any external libraries enabled.
    DESC

    s.homepage          = "https://github.com/Vikramk-nd/mobile-ffmpeg"
    s.author            = { "Taner Sener" => "tanersener@gmail.com" }
    s.license           = { :type => "LGPL-3.0", :file => "ios-frameworks/mobileffmpeg.xcframework/LICENSE" }

    s.platform          = :ios
    s.requires_arc      = true
    s.libraries         = 'z', 'bz2', 'c++', 'iconv'

    s.ios.deployment_target = '9.3'
    s.ios.frameworks    = 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox'

    # Pointing to your repository where the frameworks are stored
    s.source            = { :git => "https://github.com/Vikramk-nd/mobile-ffmpeg.git", :tag => s.version.to_s }

    # Ensure CocoaPods keeps the xcframeworks
    s.preserve_paths    = "ios-frameworks/mobile-ffmpeg-min/*.xcframework"

    # Reference vendored XCFrameworks from the ios-frameworks folder
    s.ios.vendored_frameworks = 'ios-frameworks/mobileffmpeg.xcframework', 
                                'ios-frameworks/libavcodec.xcframework', 
                                'ios-frameworks/libavdevice.xcframework', 
                                'ios-frameworks/libavfilter.xcframework', 
                                'ios-frameworks/libavformat.xcframework', 
                                'ios-frameworks/libavutil.xcframework', 
                                'ios-frameworks/libswresample.xcframework', 
                                'ios-frameworks/libswscale.xcframework'
end

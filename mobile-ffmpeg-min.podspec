Pod::Spec.new do |s|  
    s.name              = "mobile-ffmpeg-min"
    s.version           = "4.4.nd"
    s.summary           = "Mobile FFmpeg Min Static Framework"
    s.description       = <<-DESC
    Includes FFmpeg v4.4 without any external libraries enabled.
    DESC

    s.homepage          = "https://github.com/Vikramk-nd/mobile-ffmpeg"

    s.author            = { "Taner Sener" => "tanersener@gmail.com" }
    s.license           = { :type => "LGPL-3.0", :file => "mobileffmpeg.framework/LICENSE" }

    s.platform          = :ios
    s.requires_arc      = true
    s.libraries         = 'z', 'bz2', 'c++', 'iconv'

    # Updated source URL pointing to your forked repo release
    s.source            = { :http => "https://github.com/Vikramk-nd/mobile-ffmpeg/releases/download/v4.4.nd/mobile-ffmpeg-min.zip" }

    s.ios.deployment_target = '9.3'
    s.ios.frameworks    = 'AudioToolbox','AVFoundation','CoreMedia','VideoToolbox'
    s.ios.vendored_frameworks = 'mobileffmpeg.framework', 'libavcodec.framework', 'libavdevice.framework', 'libavfilter.framework', 'libavformat.framework', 'libavutil.framework', 'libswresample.framework', 'libswscale.framework'
end

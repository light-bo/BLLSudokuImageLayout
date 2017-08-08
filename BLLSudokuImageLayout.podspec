Pod::Spec.new do |s|
  s.name         = "BLLSudokuImageLayout"
  s.version      = "0.1.0"
  s.summary      = "A UI component display images with 'sudoku' style like 'nice' app."
  s.description  = <<-DESC
    A UI component display images with the style like "nice" app. (类似【nice】app 首页列表中图片显示效果的 UI 组件】)
                   DESC

  s.homepage     = "https://github.com/light-bo/BLLSudokuImageLayout"
  s.license      = "MIT"
  s.author             = { "light_bo" => "light_bo@126.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/light-bo/BLLSudokuImageLayout.git", :tag => "#{s.version}" }
  s.source_files  = "BLLSudokuImageLayoutDemo/BLLSudokuImageLayout/Layout/*"
  s.exclude_files = "Classes/Exclude"
  s.framework  = "UIKit"
  s.requires_arc = true
end

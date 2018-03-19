Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "RWPickFlavor"
s.summary = "RWPickFlavor lets a user select an ice cream flavor."
s.requires_arc = true

# 2
s.version = "1.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Pero" => "seckovpero@gmail.com" }

# For example,
# s.author = { "Joshua Greene" => "jrg.developer@gmail.com" }


# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/seckovpero/Primer"

# For example,
# s.homepage = "https://github.com/JRG-Developer/RWPickFlavor"


# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :http => "https://www.dropbox.com/s/9hq4gr8xsmnmth0/RWPickFlavor.zip?dl=0"}
s.ios.vendored_frameworks = 'RWPickFlavor.framework'
# For example,
# s.source = { :path => "~/Desktop/RWPickFlavor.zip", :tag => "#{s.version}"}


# 7
s.framework = "UIKit"
s.dependency 'Masonry'
#s.dependency 'MBProgressHUD', '~> 0.9.0'

# 8
#s.source_files = "RWPickFlavor/**/*.{h,m}"

# 9
#s.resources = "RWPickFlavor/**/*.{png,jpeg,jpg,storyboard,xib}"
end

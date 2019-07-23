cask 'webcamoid' do
  version '8.6.1'
  sha256 'a0406169d4d82b885ebc58fc68c1e58c2d11a45837d6ec8e95ce52768d27b69a'

  url "https://github.com/webcamoid/webcamoid/releases/download/#{version}/webcamoid-#{version}.dmg"
  name 'Webcamoid'
  homepage 'https://webcamoid.github.io'

  app "webcamoid-#{version}.app"
end


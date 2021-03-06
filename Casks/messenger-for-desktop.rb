cask 'messenger-for-desktop' do
  version '2.0.9'
  sha256 'd6a550e1f1303a4a3196d61ebdeff499bff7cc6a946c1e5ad3e8f33ebf6987b6'

  # github.com/aluxian/Messenger-for-Desktop was verified as official when first introduced to the cask
  url "https://github.com/aluxian/Messenger-for-Desktop/releases/download/v#{version}/messengerfordesktop-#{version}-osx.dmg"
  appcast 'https://github.com/aluxian/Messenger-for-Desktop/releases.atom',
          checkpoint: 'a396e88b7b59176e7bb36e222102b4dd0fb1c660f95b958c6c2009b7a6e281f2'
  name 'Messenger for Desktop'
  homepage 'https://messengerfordesktop.com/'

  auto_updates true

  app 'Messenger for Desktop.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/Messenger For Desktop*',
                '~/Library/Application Support/Messenger For Desktop',
                '~/Library/Caches/com.aluxian.messengerfd',
                '~/Library/Caches/com.aluxian.messengerfd.ShipIt',
                '~/Library/Cookies/com.aluxian.messengerfd.binarycookies',
                '~/Library/Preferences/ByHost/com.aluxian.messengerfd.ShipIt*',
                '~/Library/Preferences/com.aluxian.messengerfd.helper.plist',
                '~/Library/Preferences/com.aluxian.messengerfd.plist',
                '~/Library/Saved Application State/com.aluxian.messengerfd.savedState',
              ]
end

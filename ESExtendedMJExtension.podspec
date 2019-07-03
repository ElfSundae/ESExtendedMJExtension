Pod::Spec.new do |s|
  s.name        = 'ESExtendedMJExtension'
  s.version     = '0.1.0'
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.summary     = 'An extended library of MJExtension (A fast, convenient and nonintrusive conversion framework between JSON and model).'
  s.homepage    = 'https://github.com/ElfSundae/ESExtendedMJExtension'
  s.authors     = { 'Elf Sundae' => 'https://0x123.com' }
  s.source      = { :git => 'https://github.com/ElfSundae/ESExtendedMJExtension.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.8'

  s.source_files = 'ESExtendedMJExtension/**/*.{h,m}'

  s.dependency 'MJExtension', '~> 3.0'
end

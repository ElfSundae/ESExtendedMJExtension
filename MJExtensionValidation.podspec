Pod::Spec.new do |s|
  s.name        = 'MJExtensionValidation'
  s.version     = '0.1.0'
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.summary     = 'Provides an opportunity of validating converted model objects for MJExtension.'
  s.homepage    = 'https://github.com/ElfSundae/MJExtensionValidation'
  s.authors     = { 'Elf Sundae' => 'https://0x123.com' }
  s.source      = { :git => 'https://github.com/ElfSundae/MJExtensionValidation.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.8'

  s.source_files = 'MJExtensionValidation/**/*.{h,m}'

  s.dependency 'MJExtension', '~> 3.0'
end

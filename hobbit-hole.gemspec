Gem::Specification.new do |s|

  s.name         = 'hobbit-hole'
  s.version      = '0.0.2'
  s.date         = '2015-06-02'
  s.summary      = 'Simple hobbit extension'
  s.description  = 'Allows rendering of static HTML and mote-angular template files'
  s.authors      = ['Erik Griffin']
  s.email        = ['contact@erikgriffin.io']
  s.files        = ['lib/hobbit/hole.rb']
  s.homepage     = 'http://github.com/ErikAGriffin/hobbit-hole.git'
  s.license      = 'MIT'

  s.add_development_dependency 'mote-angular'

  s.add_runtime_dependency 'hobbit'
end

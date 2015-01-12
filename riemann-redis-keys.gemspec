Gem::Specification.new do |s|
  s.rubyforge_project = 'riemann-redis-keys'

  s.name = 'riemann-redis-keys'
  s.version = '0.1.1'
  s.author = 'Stuart Quin'
  s.email = 'stuart.quin@gmail.com'
  s.homepage = 'https://github.com/stuartquin/riemann-redis-keys'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Monitor redis key size/length and report back to riemann'
  s.description = 'Monitor redis key size/length and report back to riemann'
  s.license = 'MIT'

  s.add_dependency 'riemann-tools', '>= 0.2.1'
  s.add_dependency 'redis', '>= 3.0.2'

  s.files = ['bin/riemann-redis-keys', 'README.md']
  s.executables << 'riemann-redis-keys'

  s.has_rdoc = false

  s.required_ruby_version = '>= 1.8.7'
end

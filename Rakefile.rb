require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'
require 'find'

# Don't include resource forks in tarballs on Mac OS X.
ENV['COPY_EXTENDED_ATTRIBUTES_DISABLE'] = 'true'
ENV['COPYFILE_DISABLE'] = 'true'

# Gemspec
gemspec = Gem::Specification.new do |s|
  s.rubyforge_project = 'riemann-redis-keys'

  s.name = 'riemann-redis-keys'
  s.version = '0.0.1'
  s.author = 'Stuart Quin'
  s.email = 'stuart.quin@gmail.com'
  s.homepage = 'https://github.com/stuartquin/riemann-redis-keys'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Monitor redis key size/length and report back to riemann'

  s.add_dependency 'riemann-tools', '>= 0.2.1'
  s.add_dependency 'redis', '>= 3.0.2'

  s.files = FileList['bin/*', 'README.md'].to_a
  s.executables |= Dir.entries('bin/')
  s.has_rdoc = false

  s.required_ruby_version = '>= 1.8.7'
end

Gem::PackageTask.new gemspec do |p|
end

RDoc::Task.new do |rd|
  rd.main = 'Riemann redis keys'
  rd.title = 'Riemann redis keys'
  rd.rdoc_dir = 'doc'
end

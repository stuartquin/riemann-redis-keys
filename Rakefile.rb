require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'
require 'find'

# Don't include resource forks in tarballs on Mac OS X.
ENV['COPY_EXTENDED_ATTRIBUTES_DISABLE'] = 'true'
ENV['COPYFILE_DISABLE'] = 'true'

RDoc::Task.new do |rd|
  rd.main = 'Riemann redis keys'
  rd.title = 'Riemann redis keys'
  rd.rdoc_dir = 'doc'
end

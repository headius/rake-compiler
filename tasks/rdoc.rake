require 'rake/rdoctask'

CLOBBER.include('doc/html')

Rake::RDocTask.new(:rdoc) do |rd|
  rd.title    = 'rake-compiler -- Documentation'
  rd.main     = 'README.rdoc'
  rd.rdoc_dir = 'doc/html'
  rd.options << '--main'  << 'README.rdoc' << '--title' << 'rake-compiler -- Documentation'
  rd.rdoc_files.include %w(README.rdoc LICENSE.txt lib/**/*.rb)
end

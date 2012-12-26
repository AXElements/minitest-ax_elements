if defined? MACRUBY_REVISION
  require 'rubygems'
  def on_macruby?
    true
  end
else
  def on_macruby?
    false
  end
end

def on_mri?
  !on_macruby?
end

task :default => :test


# Testing

require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs << '.'
  t.pattern = "test/**/*_test.rb"
end


# Gem stuff

require 'rubygems/package_task'
SPEC = Gem::Specification.load('minitest-ax_elements.gemspec')

Gem::PackageTask.new(SPEC) { }

desc 'Build and install gem (not including deps)'
task :install => :gem do
  require 'rubygems/installer'
  Gem::Installer.new("pkg/#{SPEC.file_name}").install
end


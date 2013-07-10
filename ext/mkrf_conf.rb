require 'rubygems/dependency_installer.rb'

installer = Gem::DependencyInstaller.new

begin
  installer.install 'json', '>= 0' if RUBY_VERSION < "1.9"
rescue
  exit(1)
end

File.open(File.join(File.dirname(__FILE__), "Rakefile"), "w") do |f|
  f.write("task :default\n")
end

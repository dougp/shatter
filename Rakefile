require 'rubygems'
require 'rake/gempackagetask'

spec= Gem::Specification.new do |s|
  s.name="Shatter"
  s.version = "0.0.1"
  s.author = "Doug Peterson"
  s.email = "dougp757"
  s.homepage = "http://github.com/dougp/shatter"
  s.summary = "Allows non verbose access hash members"
  s.files = ["License", "README","lib/shatter.rb", "Rakefile"]
  s.has_rdoc = false
end
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_tar = true
end

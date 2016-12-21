$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))

require 'dockmaster/sitemap/version'

Gem::Specification.new do |s|
  s.name      = 'dockmaster-sitemap'
  s.version   = Dockmaster::Sitemap::VERSION
  s.license   = 'MIT'
  s.authors   = ['Christopher Lutz']

  s.files     = `git ls-files lib templates LICENSE.txt`.split($RS)

  s.summary   = 'The official sitemap plugin for Dockmaster'
  s.homepage  = ''

  s.add_development_dependency 'dockmaster', '~> 0.1.0'
  s.add_development_dependency 'bundler', '~> 1.13'
end

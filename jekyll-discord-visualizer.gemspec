# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-discord-visualizer/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-discord-visualizer"
  spec.version       = Jekyll::DiscordVisualizer::VERSION
  spec.authors       = ["Douile"]
  spec.email         = ["25043847+Douile@users.noreply.github.com"]

  spec.summary       = %q{jekyll plugin to generate html snippets for embedding Discord messages}
  spec.description   = %q{jekyll plugin to generate html snippets for embedding Discord messages}
  spec.homepage      = "https://github.com/Douile/jekyll-discord-visualizer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.extensions    = ["extconf.rb"]

  spec.add_dependency 'jekyll'
  spec.add_dependency 'open3'
  spec.add_development_dependency "bundler", "~> 2.1"
end

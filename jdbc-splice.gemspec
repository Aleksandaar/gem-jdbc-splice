# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jdbc/splice/version'

Gem::Specification.new do |spec|
  spec.name          = "jdbc-splice"
  spec.version       = Jdbc::Splice::VERSION
  spec.authors       = ["Kolosek"]
  spec.email         = ["office@kolosek.com"]

  spec.summary       = %q{Splice Engine for JRuby. Includes the JDBC driver.}
  spec.description   = %q{Install this gem `require 'jdbc/splice'` and invoke `Jdbc::Splice.load_driver` within JRuby to load the driver.}
  spec.homepage      = "http://splicemachine.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
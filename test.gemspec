
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "test/version"

Gem::Specification.new do |spec|
  spec.name          = "test"
  spec.version       = Test::VERSION
  spec.authors       = ["kyung kim"]
  spec.email         = ["kyung86@gmail.com"]

  spec.summary       = %q{test}
  spec.description   = %q{test}
  spec.homepage      = "https://github.com/kimky123/test.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.require_paths = ["lib", "features/step_definitions"]
  spec.files = Dir.glob("features/step_definitions/**/*.rb")

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end

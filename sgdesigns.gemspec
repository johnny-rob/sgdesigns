require_relative "lib/sgdesigns/version"

Gem::Specification.new do |spec|
  spec.name          = "sgdesigns"
  spec.version       = Sgdesigns::VERSION
  spec.authors       = ["johnny-rob"]
  spec.email         = ["jpinney1@gmail.com"]

  spec.summary       = "Footer for Stephanie's website."
  spec.homepage      = "https://sgdesigns.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "http://sgdesigns.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://sgdesigns.com"
  spec.metadata["changelog_uri"] = "https://sgdesigns.com/changelog"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end

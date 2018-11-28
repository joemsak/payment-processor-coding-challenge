
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mind_plant/version"

Gem::Specification.new do |spec|
  spec.name          = "mind_plant"
  spec.version       = MindPlant::VERSION
  spec.authors       = ["Joe Sak"]
  spec.email         = ["joe@joesak.com"]

  spec.summary       = %q{A very popular payment processor}
  spec.description   = %q{A very popular payment processor, but described more}
  spec.homepage      = "https://github.com/joemsak/mind_tree"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/joemsak/mind_tree"
    spec.metadata["changelog_uri"] = "https://github.com/joemsak/mind_tree/blob/master/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "luhn-ruby", '~> 1.0.0'

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.8.0"
  spec.add_development_dependency "rspec-its", "~> 1.2.0"
  spec.add_development_dependency "timecop", "~> 0.9.1"
end

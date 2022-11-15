require_relative "lib/delivery_manager/version"

Gem::Specification.new do |spec|
  spec.name        = "delivery_manager"
  spec.version     = DeliveryManager::VERSION
  spec.authors     = ["vandemberg"]
  spec.email       = ["vandemberg.silva.lima@gmail.com"]
  spec.homepage    = "https://github.com/vandemberg/storage-system"
  spec.summary     = "Summary of DeliveryManager."
  spec.description = "Description of DeliveryManager."

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://github.com/vandemberg/storage-system"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/vandemberg/storage-system"
  spec.metadata["changelog_uri"] = "https://github.com/vandemberg/storage-system"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.3.1"
end

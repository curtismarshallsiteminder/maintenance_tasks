# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "maintenance_tasks"
  spec.version = "1.10.3"
  spec.author = "Shopify Engineering"
  spec.email = "gems@shopify.com"
  spec.homepage = "https://github.com/Shopify/maintenance_tasks"
  spec.summary = "A Rails engine for queuing and managing maintenance tasks"
  spec.license = "MIT"

  spec.metadata = {
    "source_code_uri" =>
      "https://github.com/Shopify/maintenance_tasks/tree/v#{spec.version}",
    "allowed_push_host" => "https://rubygems.org",
  }

  spec.files = Dir["{app,config,db,lib}/**/*", "LICENSE.md", "README.md"]
  spec.bindir = "exe"
  spec.executables = ["maintenance_tasks"]

  spec.add_dependency("actionpack", ">= 5.2")
  spec.add_dependency("activejob", ">= 5.2")
  spec.add_dependency("activerecord", ">= 5.2")
  spec.add_dependency("job-iteration", "~> 1.1")
  spec.add_dependency("railties", ">= 5.2")
end

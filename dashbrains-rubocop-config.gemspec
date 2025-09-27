# frozen_string_literal: true

require_relative 'lib/version'

Gem::Specification.new do |spec|
  spec.name = 'dashbrains-rubocop-config'
  spec.version = Dashbrains::Rubocop::Config::VERSION
  spec.authors = ['DashBrains']
  spec.email = ['contact@dashbrains.dev']

  spec.summary = 'Rubocop config for DashBrains'
  spec.description = 'Shared Rubocop config used at DashBrains'
  spec.homepage = 'https://github.com/DashBrains/rubocop-config'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/DashBrains/rubocop-config'
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0")
      .reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop'
  spec.add_dependency 'rubocop-capybara'
  spec.add_dependency 'rubocop-factory_bot'
  spec.add_dependency 'rubocop-graphql'
  spec.add_dependency 'rubocop-minitest'
  spec.add_dependency 'rubocop-performance'
  spec.add_dependency 'rubocop-rails'
  spec.add_dependency 'rubocop-rspec'
  spec.add_dependency 'rubocop-rspec_rails'
  spec.add_dependency 'rubocop-sorbet'
  spec.add_dependency 'standard'
  spec.add_dependency 'standard-rails'
  spec.add_dependency 'standard-sorbet'
end

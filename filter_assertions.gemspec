require File.expand_path('../lib/filter_assertions/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'filter_assertions'
  s.version     = FilterAssertions::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = 'Gem adding assertions to test if before filters have been applied.'
  s.description = <<-DESC
    Gem extends the class ActiveSupport::TestCase by adding assertions to test if before filters have been applied (via before_filter or append_before_filter) or skipped (via skip_before_filter).
  DESC
  s.authors     = ['Daniel Pietzsch', 'Vít Krchov']
  s.email       = 'vit.krchov@gmail.com'
  s.homepage    = 'https://github.com/vita/filter_assertions'

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'

  s.add_dependency 'bundler', '~> 1.0.0'
  s.add_dependency 'rails', '>= 3.0.0'

  s.add_development_dependency 'turn'
  s.add_development_dependency 'shoulda'
  s.add_development_dependency 'sqlite3-ruby'
end
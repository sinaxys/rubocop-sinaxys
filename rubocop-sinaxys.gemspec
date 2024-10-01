Gem::Specification.new do |s|
  s.name = "rubocop-sinaxys"
  s.summary = "Sinaxys styling for Ruby on Rails"
  s.author = "Brunno Pleffken Hosti"
  s.email = "brunno@sinaxys.com"
  s.homepage = "https://github.com/sinaxys/rubocop-sinaxys"

  s.license = "MIT"

  s.version = "1.0.0"
  s.platform = Gem::Platform::RUBY

  s.add_dependency "rubocop"
  s.add_dependency "rubocop-rails"
  s.add_dependency "rubocop-performance"
  s.add_dependency "rubocop-minitest"

  s.files = %w[ rubocop.yml ]
end

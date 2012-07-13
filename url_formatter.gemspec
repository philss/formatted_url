Gem::Specification.new do |gem|
  gem.name = "url_formatter"
  gem.summary = "A easy way to get formated URLs."
  gem.files =  `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test}/*`.split("\n")
  gem.require_path = ['lib']
  gem.version = '0.0.1'
  gem.add_dependency('youtube_id')
end

Gem::Specification.new do |s|
  s.name = "url_formatter"
  s.summary = "Formatted URLs."
  s.files =  `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test}/*`.split("\n")
  s.require_path = ['lib']
  s.version = '0.0.2'
  s.add_dependency('youtube_id')

  s.author = "Philip Sampaio Silva"
  s.email  = "philip.sampaio@gmail.com"
  s.required_ruby_version = '>= 1.9.3'
  
end

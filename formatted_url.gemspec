Gem::Specification.new do |s|
  s.name = "formatted_url"
  s.summary = 'This gem formats URLs to different formats, like the Youtube formats: embed, minified and default'
  s.files =  `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test}/*`.split("\n")
  s.require_path = ['lib']
  s.version = '0.0.6'
  s.add_dependency 'youtube_id', '~> 0.0.3'

  s.author = 'Philip Sampaio Silva'
  s.email  = 'philip.sampaio@gmail.com'
end

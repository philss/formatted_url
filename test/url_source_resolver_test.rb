require 'test_helper'

class URLSourceResolverTest < Test::Unit::TestCase
  def setup
    @resolver = URLSourceResolver.new('http://youtube.com')
  end

  def test_find_youtube_as_source
    assert_equal(:youtube, @resolver.source)
  end

  def test_default_source_for_url
    @resolver.url = "http://google.com"
    assert_equal(:default, @resolver.source)
  end
end

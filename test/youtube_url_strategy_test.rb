require 'test_helper'

class YoutubeURLStrategyTest < Test::Unit::TestCase
  def setup
    @strategy = URLFormatter::Strategies::YoutubeURLStrategy
    @url = 'http://www.youtube.com/watch?v=bNlNZ2T9EeY'
    @url2 = 'http://www.youtube.com/watch?v=XXXdDDASDFw'
  end

  def test_default_url_returns_the_same
    assert_equal(@url, @strategy.url(@url,:default))
  end

  def test_short_url
    assert_equal('http://youtu.be/bNlNZ2T9EeY', @strategy.url(@url, :short))
    assert_equal('http://youtu.be/XXXdDDASDFw', @strategy.url(@url2, :short))
  end

  def test_embed_url
    assert_equal('http://youtube.com/embed/bNlNZ2T9EeY', @strategy.url(@url, :embed))
  end

  def test_unknown_format_returns_default
    assert_equal(@url, @strategy.url(@url,:other_format))
  end

end

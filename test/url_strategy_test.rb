require 'test_helper'

class URLStrategyTest < Test::Unit::TestCase
  def test_youtube_strategy
    assert_equal(URLFormatter::Strategies::YoutubeURLStrategy, URLFormatter.strategy(:youtube))
  end

  def test_default_strategy
    assert_equal(URLFormatter::Strategies::DefaultURLStrategy, URLFormatter.strategy(:default))
  end
end

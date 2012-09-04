require 'test_helper'

class URLStrategyTest < Test::Unit::TestCase
  def test_youtube_strategy
    assert_equal(FormattedURL::Strategies::YoutubeURLStrategy, FormattedURL.strategy(:youtube))
  end

  def test_default_strategy
    assert_equal(FormattedURL::Strategies::DefaultURLStrategy, FormattedURL.strategy(:default))
  end
end

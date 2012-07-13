require 'test_helper'

class URLStrategyTest < Test::Unit::TestCase
  def test_youtube_strategy
    assert_equal(YoutubeURLStrategy, URLStrategy.strategy(:youtube))
  end

  def test_default_strategy
    assert_equal(DefaultURLStrategy, URLStrategy.strategy(:default))
  end
end

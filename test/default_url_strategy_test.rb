require 'test_helper'

class DefaultURLStrategyTest < Test::Unit::TestCase
  def setup
    @strategy = FormattedURL::Strategies::DefaultURLStrategy
  end

  def test_default_url_always_return_same_url
    [:default, :short, :embed].each do |format|
      assert_equal(@strategy.url('http://google.com',format), 'http://google.com')
    end
  end
end

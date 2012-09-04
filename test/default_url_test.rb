require 'test_helper'

class DefaultURLTest < Test::Unit::TestCase
  def setup
    @base_url = 'http://google.com'
    @youtube_url = 'http://www.youtube.com/watch?v=bNlNZ2T9EeY'
  end

  def test_default_url_returns_always_the_same
    assert_equal(FormattedURL.url(@base_url, :default) ,@base_url)
    [:short, :embed, :default].each do |format|
      assert_equal(FormattedURL.url(@base_url, format) ,@base_url)
    end
  end

end

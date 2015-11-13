require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do
  quote = Quote.create(:author => 'Kyle Naizer', :saying => 'The beauty of travel happens when you least expect it.')
  expected = 'KN#' + quote.id.to_s
  actual = quote.unique_tag
  assert_equal expected, actual
  end
end

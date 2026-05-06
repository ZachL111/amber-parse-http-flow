require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = AmberParseHttpFlow::DomainReview.new(signal: 60, slack: 54, drag: 16, confidence: 47)
    assert_equal 173, AmberParseHttpFlow.domain_review_score(item)
    assert_equal "ship", AmberParseHttpFlow.domain_review_lane(item)
  end
end

require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = AmberParseHttpFlow::Signal.new(demand: 58, capacity: 102, latency: 13, risk: 17, weight: 7)
    assert_equal 149, AmberParseHttpFlow.score(signal_case_1)
    assert_equal 'review', AmberParseHttpFlow.classify(signal_case_1)
    signal_case_2 = AmberParseHttpFlow::Signal.new(demand: 91, capacity: 91, latency: 12, risk: 18, weight: 6)
    assert_equal 195, AmberParseHttpFlow.score(signal_case_2)
    assert_equal 'accept', AmberParseHttpFlow.classify(signal_case_2)
    signal_case_3 = AmberParseHttpFlow::Signal.new(demand: 85, capacity: 94, latency: 22, risk: 10, weight: 8)
    assert_equal 218, AmberParseHttpFlow.score(signal_case_3)
    assert_equal 'accept', AmberParseHttpFlow.classify(signal_case_3)
  end
end

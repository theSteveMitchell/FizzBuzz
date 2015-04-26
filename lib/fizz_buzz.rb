module FizzBuzz
  DEFAULT_RANGE = 1..100
  DEFAULT_TRIGGERS = [
    ['Fizz', ->(i){ i % 3 == 0 }],
    ['Buzz', ->(i){ i % 5 == 0 }],
  ]

  ##
  # Makes an array of FizzBuzz values for the given range and triggers.
  #
  # @param range [Range<Integer>] FizzBuzz integer range
  # @param triggers [Array<Array(String, Integer)>] An array of [text, predicate]
  # @return [Array<String>] FizzBuzz results
  #
  def self.range(range=DEFAULT_RANGE, triggers=DEFAULT_TRIGGERS)
    enumerator(range.first, triggers).take(range.size)
  end

  ##
  # Makes a FizzBuzz value enumerator, starting at the given integer, for the
  # given triggers.
  #
  # @param start [Integer] The first integer to FizzBuzz
  # @param triggers [Array<Array(String, Integer)>] An array of [text, predicate]
  # @return [Enumerable] Infinite sequence of FizzBuzz results, starting with `start`
  #
  def self.enumerator(start=DEFAULT_RANGE.first, triggers=DEFAULT_TRIGGERS)
    Enumerator.new do |yielder|
      i = start
      loop do
        parts = triggers.select{ |(_, predicate)| predicate.call(i) }
        i_result = parts.size > 0 ? parts.map(&:first).join : i.to_s
        yielder.yield(i_result)
        i += 1
      end
    end
  end

end

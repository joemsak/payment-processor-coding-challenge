module MindPlant
  class Report
    attr_reader :cards

    def initialize(cards)
      names = cards.keys.sort
      @cards = Hash[names.zip(cards.values_at(*names))]
    end

    def print_summary
      cards.each do |name, card|
        $stdout.puts(build_summary(name, card))
      end
    end

    private
    def build_summary(name, card)
      if card.valid?
        "#{name}: $#{card.balance}"
      else
        "#{name}: error"
      end
    end
  end
end
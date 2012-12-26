module Amex
  class CardAccount
    attr_accessor :card_product, :card_index, :card_number_suffix,
      :lending_type, :card_member_name, :past_due, :cancelled, :is_basic,
      :is_centurion, :is_platinum, :is_premium, :market, :card_art,
      :rewards_explore_url, :loyalty_indicator, :card_art_s3,
      :payment_history_eligible, :payment_eligible, :stmt_balance,
      :payment_credits, :recent_charges, :total_balance, :payment_due,
      :payment_due_date, :loyalty_programmes

    def initialize(options)
      options.each do |key, value|
        send(key.underscore + "=", value)
      end
      @loyalty_programmes = []
    end

    def inspect
      "#<#{class}: #{card_product}, #{card_member_name}>"
    end

  end
end
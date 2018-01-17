module ProductsHelper

  def dollars(amount)
    price_in_dollars = amount.to_f / 100
    sprintf("$%.2f", price_in_dollars)
  end

end

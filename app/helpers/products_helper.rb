module ProductsHelper

  def print_price(price)
  number_to_currency price
  end
end

def print_stock(stock)
  if stock > 0
print "In stock"
  elsif
print " low stock"
  else
print "Out of stock"
  end
end

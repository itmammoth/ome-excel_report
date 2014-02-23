class Report

  def initialize(year, month)
    @start_date = Date.new(year, month, 1)
    @end_date = @start_date + 1.month - 1.day
  end

  def dates
    @start_date..@end_date
  end

  def products
    @products ||= Product.all.to_a
  end

  def sales_amount_on(date, product)
    Sale.where(sales_date: date)
        .where(product_id: product.id)
        .sum(:amount)
  end
end
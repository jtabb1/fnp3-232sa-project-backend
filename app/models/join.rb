class Join < ActiveRecord::Base
  attr_accessor :seller_id, :product_id, :seller_name, :product_name, :category_name

  def self.new_from_db(row)
    # create a new Student object given a row from the database
    join = self.new
    join.seller_id = row[0]
    join.product_id = row[1]
    join.seller_name = row[2]
    join.product_name = row[3]
    join.category_name = row[4]
    join
  end

end
class AddPropertyIdToReviews < ActiveRecord::Migration[5.2]
  def change
  	add_column :reviews, :property_id, :integer 
  end
end

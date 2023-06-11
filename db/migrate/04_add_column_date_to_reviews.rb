class AddColumnDateToReviews < ActiveRecord::Migration[7.0]
  def change
  add_column :reviews, :created_at, :timestamps
  add_column :reviews, :updated_at, :timestamps
  end
end

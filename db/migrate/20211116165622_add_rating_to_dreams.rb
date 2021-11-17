class AddRatingToDreams < ActiveRecord::Migration[6.0]
  def change
    add_column :dreams, :rating, :float
  end
end

class AddSeasonToShows < ActiveRecord::Migration[6.1]
  def change
    add_column :Shows, :season, :string
  end
end

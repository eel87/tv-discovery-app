class CreateTmdbServices < ActiveRecord::Migration[6.0]
  def change
    create_table :tmdb_services do |t|

      t.timestamps
    end
  end
end

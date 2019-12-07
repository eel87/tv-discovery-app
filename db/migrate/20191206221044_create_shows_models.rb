class CreateShowsModels < ActiveRecord::Migration[6.0]
  def change
    create_table :shows_models do |t|

      t.timestamps
    end
  end
end

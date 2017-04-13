class AddConcertsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
    t.string :city
  end
  end
end

class CreateBands1s < ActiveRecord::Migration[5.2]
  def change
    create_table :bands1s do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end

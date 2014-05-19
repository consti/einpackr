class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :destination
      t.integer :weight

      t.timestamps
    end
  end
end

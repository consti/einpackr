class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.references :box, index: true

      t.timestamps
    end
  end
end

class CreateCameras < ActiveRecord::Migration
  def change
    create_table :cameras do |t|
      t.string :name
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end

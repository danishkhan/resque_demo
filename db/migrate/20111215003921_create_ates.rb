class CreateAtes < ActiveRecord::Migration
  def change
    create_table :ates do |t|
      t.string :food

      t.timestamps
    end
  end
end

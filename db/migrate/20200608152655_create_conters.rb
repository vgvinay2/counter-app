class CreateConters < ActiveRecord::Migration[6.0]
  def change
    create_table :conters do |t|
      t.integer :count

      t.timestamps
    end
  end
end

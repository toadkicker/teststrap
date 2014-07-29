class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :cog
      t.string :gear
      t.string :axle

      t.timestamps
    end
  end
end

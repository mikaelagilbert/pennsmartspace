class CreateStudySpots < ActiveRecord::Migration
  def change
    create_table :study_spots do |t|
      t.boolean :is_open, default: true
      t.string :arduino_id
      t.references :room
      t.timestamps null: false
    end
  end
end

class CreateUsageTimes < ActiveRecord::Migration
  def change
    create_table :usage_times do |t|
      t.datetime :start
      t.datetime :end
      t.references :study_spot, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

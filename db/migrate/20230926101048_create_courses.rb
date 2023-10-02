class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.text :description
      t.string :level

      t.timestamps
    end
  end
end

class AddEndAtToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :end_at, :datetime
  end
end

class AddStartAtToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :start_at, :datetime
  end
end

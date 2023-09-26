class AddLanguageRefToCourses < ActiveRecord::Migration[7.0]
  def change
    add_reference :courses, :language, null: false, foreign_key: true
  end
end

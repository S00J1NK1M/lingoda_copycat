class CreateLangauges < ActiveRecord::Migration[7.0]
  def change
    create_table :langauges do |t|
      t.string :name

      t.timestamps
    end
  end
end

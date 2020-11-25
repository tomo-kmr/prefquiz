class CreatePrefs < ActiveRecord::Migration[6.0]
  def change
    create_table :prefs do |t|
      t.integer :region_no, null: false
      t.string :pref_name, null: false
      t.integer :sort_no
      t.integer :answer_no
      t.integer :rotate
      t.timestamps
    end
  end
end

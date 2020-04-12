class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.string :title, null: false
      t.string :date, null: false
      t.references :subject, foreign_key: true
    end
  end
end

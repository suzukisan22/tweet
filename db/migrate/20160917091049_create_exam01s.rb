class CreateExam01s < ActiveRecord::Migration
  def change
    create_table :exam01s do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end

class CreateMusikas < ActiveRecord::Migration[6.0]
  def change
    create_table :musikas do |t|
      t.text :title
      t.string :singer

      t.timestamps
    end
  end
end

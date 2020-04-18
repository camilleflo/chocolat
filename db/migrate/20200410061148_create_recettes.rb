class CreateRecettes < ActiveRecord::Migration[5.2]
  def change
    create_table :recettes do |t|
      t.string :name

      t.timestamps
    end
  end
end

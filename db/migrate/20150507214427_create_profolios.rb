class CreateProfolios < ActiveRecord::Migration
  def change
    create_table :profolios do |t|
      t.string :name
      t.string :password
      t.string :stocks

      t.timestamps null: false
    end
  end
end

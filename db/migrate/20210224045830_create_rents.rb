class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.string :name
      t.text :address
      t.integer :age
      t.text :content
      t.timestamps
    end
  end
end

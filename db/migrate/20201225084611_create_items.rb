class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end

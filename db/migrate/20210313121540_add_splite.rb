class AddSplite < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :spliter, :string
  end
end

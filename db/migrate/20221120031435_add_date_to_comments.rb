class AddDateToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :date, :string
  end
end

class DeleteDateFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :date
  end
end

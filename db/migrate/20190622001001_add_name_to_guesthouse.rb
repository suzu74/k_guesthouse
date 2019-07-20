class AddNameToGuesthouse < ActiveRecord::Migration[5.2]
  def change
    add_column :guesthouses, :name, :string
  end
end

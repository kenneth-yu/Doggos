class RenameDogToDoggo < ActiveRecord::Migration[5.2]
  def change
    rename_table :dogs, :doggos
  end
end

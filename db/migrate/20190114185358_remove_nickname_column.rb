class RemoveNicknameColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column  :doggos, :nickname
  end
end

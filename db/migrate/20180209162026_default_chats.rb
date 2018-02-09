class DefaultChats < ActiveRecord::Migration[5.1]
  def change
    change_column_default :sessions, :number_of_chats, 0
  end
end

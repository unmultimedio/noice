class ChangeSessionName < ActiveRecord::Migration[5.1]
  def change
    rename_table :sessions, :noice_sessions
  end
end

class SessionConnections < ActiveRecord::Migration[5.1]
  def change
    add_reference :sessions, :user, index: true
    add_column :sessions, :open, :boolean, default: true
  end
end

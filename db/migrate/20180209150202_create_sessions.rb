class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.integer :status
      t.string :audio_file_url
      t.text :mic_data
      t.text :interface_data
      t.text :equipment_data
      t.integer :number_of_chats

      t.timestamps
    end
  end
end

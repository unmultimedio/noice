json.extract! session, :id, :status, :audio_file_url, :mic_data, :interface_data, :equipment_data, :number_of_chats, :created_at, :updated_at
json.url session_url(session, format: :json)

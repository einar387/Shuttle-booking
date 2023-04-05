json.extract! passenger, :id, :service_id, :first_name, :last_name, :contact_number, :email, :number_of_seat, :created_at, :updated_at
json.url passenger_url(passenger, format: :json)

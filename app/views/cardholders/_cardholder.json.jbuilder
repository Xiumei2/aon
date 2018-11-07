json.extract! cardholder, :id, :name, :email, :birthday, :card_number, :balance, :debit, :credit, :created_at, :updated_at
json.url cardholder_url(cardholder, format: :json)

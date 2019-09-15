class AddPhoneAddressToBusinesses < ActiveRecord::Migration[6.0]
  def change
    add_column :businesses, :telephone, :string
    add_column :businesses, :address, :jsonb, null: false, default: {}
    add_index :businesses, :address, using: :gin
  end
end

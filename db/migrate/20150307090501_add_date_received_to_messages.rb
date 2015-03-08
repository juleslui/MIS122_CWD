class AddDateReceivedToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :date_received, :datetime
  end
end

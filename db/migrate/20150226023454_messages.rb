class Messages < ActiveRecord::Migration
  def self.up
  	create_table :messages do |t|
  		t.string :sent_to
  		t.datetime :date_sent
  		t.string :subject
  		t.datetime :deadline
  		t.string :received_from
  		t.string :attachment
  		t.string :notes
  		t.timestamps null: false
  		t.string :send_to
  		t.datetime :time_elapsed
  	end
  end

  def self.down
  	drop_table :messages
  end
end

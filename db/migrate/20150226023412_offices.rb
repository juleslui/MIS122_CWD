class Offices < ActiveRecord::Migration
  def self.up
  	create_table :offices do |t|
  		t.string :office_name
  	end
  end

  def self.down
  	drop_table :offices
  end
end

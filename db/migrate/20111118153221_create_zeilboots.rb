class CreateZeilboots < ActiveRecord::Migration
  def self.up
    create_table :zeilboots do |t|
      t.integer :zeilnummer
      t.string :naam
      t.naam :eigenaar
      t.date :datum_ankoop

      t.timestamps
    end
  end

  def self.down
    drop_table :zeilboots
  end
end

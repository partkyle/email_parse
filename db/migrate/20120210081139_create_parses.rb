class CreateParses < ActiveRecord::Migration
  def change
    create_table :parses do |t|
      t.text :content

      t.timestamps
    end
  end
end

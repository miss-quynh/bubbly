class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.string :quote
      t.date :day

      t.timestamps
    end
  end
end

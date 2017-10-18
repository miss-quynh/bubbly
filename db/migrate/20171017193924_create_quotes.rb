class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.text :body
      t.references :day

      t.timestamps
    end
  end
end

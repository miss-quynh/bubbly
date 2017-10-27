class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.string :author
      t.string :body
      t.date :day

      t.timestamps
    end
  end
end

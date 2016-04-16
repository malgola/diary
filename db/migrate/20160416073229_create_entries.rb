class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.date :dtae
      t.text :contents

      t.timestamps null: false
    end
  end
end

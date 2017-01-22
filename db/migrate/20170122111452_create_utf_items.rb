class CreateUtfItems < ActiveRecord::Migration[5.0]
  def change
    create_table :utf_items do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

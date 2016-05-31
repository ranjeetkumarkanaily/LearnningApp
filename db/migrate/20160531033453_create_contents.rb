class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name
      t.belongs_to :lesson

      t.timestamps null: false
    end
  end
end

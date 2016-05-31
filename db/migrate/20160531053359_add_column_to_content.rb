class AddColumnToContent < ActiveRecord::Migration
  def change
  	add_column :contents, :symbolic_name, :string
  end
end

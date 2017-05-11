class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.text :name
      t.text :phone

      t.timestamps
    end
  end
end

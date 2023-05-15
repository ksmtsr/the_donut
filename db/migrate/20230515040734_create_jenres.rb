class CreateJenres < ActiveRecord::Migration[6.1]
  def change
    create_table :jenres do |t|
      t.string :name, null: false
    	t.boolean :is_active, null: false, default: true
      t.timestamps
    end
  end
end

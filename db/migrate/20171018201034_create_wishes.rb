class CreateWishes < ActiveRecord::Migration[5.1]
  def change
    create_table :wishes do |t|
      t.text :description

      t.timestamps
    end
  end
end

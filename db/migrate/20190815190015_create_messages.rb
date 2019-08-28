class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :plain
      t.string :cipher
    

      t.timestamps
    end
  end
end

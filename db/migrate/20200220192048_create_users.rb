class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :indiv
      t.string :name
      t.string :email
      t.decimal :income, :precision => 15, :scale => 2

      t.timestamps
    end
  end
end

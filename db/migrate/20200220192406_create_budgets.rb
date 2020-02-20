class CreateBudgets < ActiveRecord::Migration[6.0]
  def change
    create_table :budgets do |t|
      t.string :name
      t.decimal :limit, :precision => 15, :scale => 2
      t.boolean :daily
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

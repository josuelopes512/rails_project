class CreateTestes < ActiveRecord::Migration[5.2]
  def change
    create_table :testes do |t|
      t.string :a
      t.string :b
      t.string :c

      t.timestamps
    end
  end
end

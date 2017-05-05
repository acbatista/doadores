class CreateDoadores < ActiveRecord::Migration[5.1]
  def change
    create_table :doadores do |t|
      t.string :name
      t.string :email
      t.string :telefone
      t.string :tipo

      t.timestamps
    end
  end
end

class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :book
      t.string :author
      t.timestamps
    end
  end
end

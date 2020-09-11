class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :description
      t.references :user

      t.timestamps
    end
  end
end

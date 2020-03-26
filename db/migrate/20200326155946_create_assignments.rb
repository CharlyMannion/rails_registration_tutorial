class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :role, index: true, foreign_key: true

      t.timestamps
    end
  end
end

class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :participants do |t|
      t.integer :role
      t.reference :user
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
